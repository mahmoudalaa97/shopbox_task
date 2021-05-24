part of 'auth_cubit.dart';

@immutable
abstract class AuthStates extends Equatable {}

class AuthInitial extends AuthStates {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class LoginSuccessState extends AuthStates {
  final AuthModel authModel;

  LoginSuccessState(this.authModel);

  @override
  // TODO: implement props
  List<Object> get props => [this.authModel];
}

class LoginLoadingState extends AuthStates {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class LoginErrorState extends AuthStates {
  final ErrorModel errorAuthModel;

  LoginErrorState({this.errorAuthModel});

  @override
  // TODO: implement props
  List<Object> get props => [this.errorAuthModel];
}

class UserCachedState extends AuthStates {
  final bool state;

  UserCachedState({this.state = false});

  @override
  // TODO: implement props
  List<Object> get props => [this.state];
}
