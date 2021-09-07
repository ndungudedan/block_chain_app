import 'package:block_chain/ui/account/change_password.dart';
import 'package:block_chain/ui/account/profile_settings.dart';
import 'package:block_chain/ui/auth/login.dart';
import 'package:block_chain/ui/auth/password_screen.dart';
import 'package:block_chain/ui/auth/register.dart';
import 'package:block_chain/ui/index/index.dart';
import 'package:block_chain/ui/wallets/buy_crypto.dart';
import 'package:block_chain/ui/wallets/fund_wallet_screen.dart';
import 'package:block_chain/ui/wallets/sell_crypto.dart';
import 'package:block_chain/ui/wallets/send_crypto.dart';
import 'package:block_chain/ui/wallets/send_currency.dart';
import 'package:block_chain/ui/wallets/withdraw_currency.dart';
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
  static const change_password = 'change_password';
  static const profile_settings = 'profile_settings';
  static const buy_crypto = 'buy_crypto';
  static const fund_wallet = 'fund_wallet';
  static const sell_crypto = 'sell_crypto';
  static const send_crypto = 'send_crypto';
  static const send_currency = 'send_currency';
  static const withdraw_currency = 'withdraw_currency';

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
      case change_password:
        screenRoute = ChangePassword();
        break;
      case profile_settings:
        screenRoute = ProfileSettings();
        break;
      case buy_crypto:
        screenRoute = BuyCrypto();
        break;
      case fund_wallet:
        screenRoute = FundWalletScreen();
        break;
      case sell_crypto:
        screenRoute = SellCrypto();
        break;
      case send_crypto:
        screenRoute = SendCrypto();
        break;
      case send_currency:
        screenRoute = SendCurrency();
        break;
      case withdraw_currency:
        screenRoute = WithdrawCurrency();
        break;
      default:
    }
    return MaterialPageRoute(builder: (context) {
      return screenRoute;
    });
  }
}
