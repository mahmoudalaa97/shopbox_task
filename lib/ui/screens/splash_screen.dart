import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopbox_task/route/app_route.dart';
import 'package:shopbox_task/services/cubit/auth_cubit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    String token = context.read<AuthCubit>().getToken();
    Timer(Duration(milliseconds: 800), () {
      Navigator.pushReplacementNamed(
          context, token != null ? AppRoute.HOME : AppRoute.LOGIN);
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Image.asset(
            "assets/logo.png",
            width: 200,
          ),
        ),
      ),
    );
  }
}
