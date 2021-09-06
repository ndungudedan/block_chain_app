import 'package:block_chain/common/routes.dart';
import 'package:block_chain/ui/auth/login.dart';
import 'package:flutter/material.dart';

import 'common/ui_helpers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BIT KE',
      theme: appTheme,
      home: Login(),
      onGenerateRoute: (settings)=>Routes(context).generateRoutes(settings),
    );
  }
}
