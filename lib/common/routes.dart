import 'package:block_chain/ui/auth/login.dart';
import 'package:block_chain/ui/auth/password_screen.dart';
import 'package:block_chain/ui/auth/register.dart';
import 'package:block_chain/ui/index/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routes {
  final BuildContext context;
  Routes(this.context);

  static const home = 'home';
  static const login = 'login';
  static const register = 'register';
  static const password_screen = 'password_screen';
  static const index = 'index';

  dynamic generateRoutes(RouteSettings settings) {
    var screenRoute;
    switch (settings.name) {
      case login:
        screenRoute = Login();
        break;
      case register:
        screenRoute = Register();
        break;
      case password_screen:
        screenRoute = PasswordScreen();
        break;
      case index:
        screenRoute = Index();
        break;
      default:
    }
    return MaterialPageRoute(builder: (context) {
      return screenRoute;
    });
  }
}
