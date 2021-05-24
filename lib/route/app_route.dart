import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopbox_task/services/cubit/client_cubit.dart';
import 'package:shopbox_task/services/cubit/product_cubit.dart';
import 'package:shopbox_task/services/network/api_client.dart';
import 'package:shopbox_task/ui/screens/login_screen.dart';
import 'package:shopbox_task/ui/screens/home_screen.dart';
import 'package:shopbox_task/ui/screens/product_screen.dart';
import 'package:shopbox_task/ui/screens/splash_screen.dart';

class AppRoute {
  ClientCubit _homeCubit = ClientCubit(apiClient: ApiClient());
  ProductCubit _productCubit = ProductCubit(apiClient: ApiClient());

  static const HOME = "/home";
  static const LOGIN = "/login";
  static const PRODUCT = "/product";

  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => SplashScreen(),
        );
      case HOME:
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(providers: [
            BlocProvider<ClientCubit>.value(
              value: _homeCubit,
            ),
            BlocProvider<ProductCubit>.value(
              value: _productCubit,
            )
          ], child: ClientScreen()),
        );
      case PRODUCT:
        return MaterialPageRoute(
            builder: (context) => MultiBlocProvider(providers: [
                  BlocProvider<ClientCubit>.value(
                    value: _homeCubit,
                  ),
                  BlocProvider<ProductCubit>.value(
                    value: _productCubit,
                  )
                ], child: ProductScreen()));
      case LOGIN:
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        );

      default:
        return null;
    }
  }
}
