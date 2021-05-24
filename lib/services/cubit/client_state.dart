part of 'client_cubit.dart';


@immutable
abstract class ClientStates extends Equatable {}

class Initial extends ClientStates {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class FetchClientSuccessfullyState extends ClientStates {
  final ClientsAccountModel clientsAccountModel;


  FetchClientSuccessfullyState(this.clientsAccountModel);

  @override
  // TODO: implement props
  List<Object> get props => [this.clientsAccountModel];
}

class ClientErrorState extends ClientStates {
  final ErrorModel errorModel;

  ClientErrorState(this.errorModel);

  @override
  // TODO: implement props
  List<Object> get props => [this.errorModel];
}

class ClientLoadingState extends ClientStates {
  @override
  // TODO: implement props
  List<Object> get props => [];
}
