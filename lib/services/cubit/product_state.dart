part of 'product_cubit.dart';

abstract class ProductStates extends Equatable {
  const ProductStates();
}

class ProductInitial extends ProductStates {
  @override
  List<Object> get props => [];
}

class ProductLoadingState extends ProductStates {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class FetchProductSuccessfullyState extends ProductStates {
  final ProductsModel productsModel;

  FetchProductSuccessfullyState(this.productsModel);

  @override
  // TODO: implement props
  List<Object> get props => [this.productsModel];
}

class ProductErrorState extends ProductStates {
  final ErrorModel errorModel;

  ProductErrorState({this.errorModel});

  @override
  // TODO: implement props
  List<Object> get props => [this.errorModel];

  @override
  String toString() {
    return super.toString();
  }
}
