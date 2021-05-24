import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:shopbox_task/models/clients_account_model.dart';
import 'package:shopbox_task/models/error_model.dart';
import 'package:shopbox_task/services/cubit/auth_cubit.dart';
import 'package:shopbox_task/services/network/auth_api_client.dart';
import 'package:shopbox_task/services/network/api_client.dart';

part 'client_state.dart';

class ClientCubit extends Cubit<ClientStates> {
  ClientCubit({@required this.apiClient}) : super(Initial());
  final ApiClient apiClient;
  final AuthCubit _authCubit = AuthCubit(apiClient: AuthApiClient());

  /// Create Global Instates
  static ClientCubit get(context) => BlocProvider.of(context);

  void fetchClient() {
    emit(ClientLoadingState());
    apiClient
        .fetchAllClientForAccount(token: _authCubit.getToken())
        .then((response) {
      if (response.statusCode == 200) {
        emit(FetchClientSuccessfullyState(
            ClientsAccountModel.fromJson(response.data)));
      }
    }).catchError((e) {
      if (e.runtimeType is DioError) {
        DioError res = e;
        _errorStatue(res.response.statusCode, res.response.data);
      }
    });
  }

  _errorStatue(int statusCode, Map<String, dynamic> data) {
    if (statusCode == 401 || statusCode == 422) {
      emit(ClientErrorState(ErrorModel.fromJson(data)));
    }
  }
}
