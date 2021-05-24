import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:shopbox_task/models/auth_model.dart';
import 'package:shopbox_task/models/error_model.dart';
import 'package:shopbox_task/services/network/auth_api_client.dart';
import 'package:shopbox_task/utils/cache_helper.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit({@required this.apiClient}) : super(AuthInitial());
  final AuthApiClient apiClient;

  /// Create Global Instates
  static AuthCubit get(context) => BlocProvider.of(context);

  login(String email, String password) {
    emit(LoginLoadingState());
    apiClient.login(email, password).then((response) {
      if (response.statusCode == 201 || response.statusCode == 200) {
        // When data successfully
        AuthModel authModel = AuthModel.fromJson(response.data);
        emit(LoginSuccessState(authModel));
        savedUserAccount(authModel.accessToken);
      }
    }).catchError((e) {
      switch (e.runtimeType) {
        case DioError:
          if (e.response?.statusCode == 401 || e.response?.statusCode == 422) {
            // When data error
            emit(LoginErrorState(
                errorAuthModel: ErrorModel.fromJson(e.response.data)));
          }
          break;
        default:
          emit(LoginErrorState());
          break;
      }
    });
  }

  Future<bool> logOut({String key}) {
    emit(UserCachedState(state: false));
    return CacheHelper.removeData(key: key);
  }

  /// Account Saved on SharedPreferences
  void savedUserAccount(String token) async {
    await CacheHelper.insertData(key: "token", data: token).then((isCached) {
      if (isCached) {
        emit(UserCachedState(state: true));
      } else {
        emit(UserCachedState(state: false));
      }
    });
  }

  String getToken() => CacheHelper.getData(key: "token");
}
