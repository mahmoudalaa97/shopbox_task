import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:shopbox_task/models/error_model.dart';
import 'package:shopbox_task/models/products_model.dart';
import 'package:shopbox_task/services/network/auth_api_client.dart';
import 'package:shopbox_task/services/network/api_client.dart';

import 'auth_cubit.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductStates> {
  ProductCubit({this.apiClient}) : super(ProductInitial());
  final ApiClient apiClient;
  final AuthCubit _authCubit = AuthCubit(apiClient: AuthApiClient());

  void fetchProduct({int clientID}) {
    emit(ProductLoadingState());
    apiClient
        .fetchAllProductForClient(
            token: _authCubit.getToken(), clientID: clientID)
        .then((response) {
      if (response.statusCode == 200) {
        emit(FetchProductSuccessfullyState(
            ProductsModel.fromJson(response.data)));
      }
    }).catchError((e) {
      switch (e.runtimeType) {
        case DioError:
          if (e.response?.statusCode == 401 || e.response?.statusCode == 422) {
            // When data error
            emit(ProductErrorState(
                errorModel: ErrorModel.fromJson(e.response.data)));
          }
          break;
        default:
          print(e.runtimeType);
          // emit(ErrorState());
          break;
      }
    });
  }

  _errorStatue(int statusCode, Map<String, dynamic> data) {
    if (statusCode == 401 || statusCode == 422) {
      emit(ProductErrorState(errorModel: ErrorModel.fromJson(data)));
    }
  }
}
