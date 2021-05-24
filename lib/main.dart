import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopbox_task/route/app_route.dart';
import 'package:shopbox_task/services/cubit/auth_cubit.dart';
import 'package:shopbox_task/services/network/auth_api_client.dart';
import 'package:shopbox_task/utils/cache_helper.dart';
import 'package:shopbox_task/utils/colors.dart';
import 'package:shopbox_task/utils/dio_helper.dart';
import 'package:shopbox_task/utils/my_bloc_observer.dart';

void main() async {
  /// Check code on the main is finished
  WidgetsFlutterBinding.ensureInitialized();

  /// Init the dio instant
  await DioHelper.init();

  /// Init the shared_preferences instant
  await CacheHelper.init();

  Bloc.observer = MyBlocObserver();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AppRoute _appRoute = AppRoute();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => AuthCubit(
                  apiClient: AuthApiClient(),
                ))
      ],
      child: MaterialApp(
        title: 'ShopBox Task',
        onGenerateRoute: _appRoute.onGenerateRoute,
        theme: ThemeData(
            primaryColor: MyColors.greenColor,
            appBarTheme: AppBarTheme(
                centerTitle: true,
                titleTextStyle: TextStyle(color: Colors.white))),
      ),
    );
  }
}
