import 'package:block_chain/common/app_colors.dart';
import 'package:block_chain/common/styles.dart';
import 'package:flutter/material.dart';

// horizontal spacing
Widget horizontalSpaceTiny = SizedBox(width: 5.0);
Widget horizontalSpaceSmall = SizedBox(width: 10.0);
Widget horizontalSpaceRegular = SizedBox(width: 18.0);
Widget horizontalSpaceMedium = SizedBox(width: 25.0);
Widget horizontalSpaceLarge = SizedBox(width: 50.0);

// vertical spacing
Widget verticalSpaceTiny = SizedBox(height: 5.0);
Widget verticalSpaceSmall = SizedBox(height: 10.0);
Widget verticalSpaceRegular = SizedBox(height: 18.0);
Widget verticalSpaceMedium = SizedBox(height: 25.0);
Widget verticalSpaceLarge = SizedBox(height: 50.0);

//theme data
var appTheme = ThemeData(
  // Define the default brightness and colors.
  brightness: Brightness.dark,
  primaryColor: kcPrimaryColor,
  accentColor: kcAccentColor,
  scaffoldBackgroundColor: kcBackgroundColor1,
  // Define the default font family.
  fontFamily: 'lato',

  // Define the default TextTheme. Use this to specify the default
  // text styling for headlines, titles, bodies of text, and more.
  textTheme: const TextTheme(
    headline1: heading1Style,
    headline6: heading6Style,
    bodyText2: bodyText1,
  ),
);
