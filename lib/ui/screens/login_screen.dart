import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopbox_task/services/cubit/auth_cubit.dart';
import 'package:shopbox_task/ui/widgets/raised_gradient_button.dart';
import 'package:shopbox_task/utils/colors.dart';
import 'package:shopbox_task/utils/validator.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key key}) : super(key: key);

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final authCubit = AuthCubit.get(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.greenColor, // status bar color
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          backgroundWidget(title: "Welcome To ShopBox", subTitle: "Login"),
          cardLoginWidget(loginPressed: () {
            if (_formKey.currentState.validate()) {
              authCubit.login(usernameController.text, passwordController.text);
            }
          })
        ],
      ),
    );
  }

  Align cardLoginWidget({VoidCallback loginPressed}) {
    return Align(
      alignment: Alignment.center,
      child: Card(
        elevation: 10,
        margin: EdgeInsets.symmetric(horizontal: 29),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: usernameController,
                  decoration: InputDecoration(
                      labelText: "Username",
                      hintText: "Enter your email here..."),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "please enter your email ";
                    }
                    if (Validator.emailValidate(value)) {
                      return "email is not valid";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter your password here..."),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "password is to short";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 40,
                ),
                BlocConsumer<AuthCubit, AuthStates>(
                  listener: (context, state) {
                    if (state is LoginErrorState) {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text("${state.errorAuthModel.error.message}"),
                        backgroundColor: Colors.red,
                      ));
                    }
                    if (state is LoginSuccessState) {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text(
                            "Welcome  ${state.authModel.account.firstName}"),
                        backgroundColor: Colors.green,
                      ));
                    }

                    if (state is UserCachedState) {
                      if (state.state) {
                        Navigator.pushReplacementNamed(context, "/home");
                      }
                    }
                  },
                  builder: (context, state) {
                    return state is LoginLoadingState
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : RaisedGradientButton(
                            onPressed: loginPressed,
                            child: Text(
                              "Login",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            borderRadius: BorderRadius.circular(27),
                            gradient: LinearGradient(
                              colors: <Color>[
                                MyColors.greenColor,
                                MyColors.greenWhiteColor
                              ],
                            ),
                          );
                  },
                ),
                SizedBox(
                  height: 25,
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Text("Forgot your password?"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Stack backgroundWidget({String title, String subTitle}) {
    return Stack(children: [
      Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: SvgPicture.asset(
            "assets/im_header.svg",
            fit: BoxFit.fill,
          )),
      Positioned(
          bottom: -65,
          right: -85,
          child: SvgPicture.asset(
            "assets/im_buttom_bubble.svg",
            fit: BoxFit.fill,
          )),
      Positioned(
          top: 40,
          left: 29,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$title",
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text("$subTitle",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              )
            ],
          )),
    ]);
  }
}
