import 'package:block_chain/common/app_colors.dart';
import 'package:flutter/material.dart';

class SettingContainer extends StatelessWidget {
  final Widget child;
  SettingContainer({required this.child});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: kcBackgroundColor3,
      shape: RoundedRectangleBorder(
          side: BorderSide(), borderRadius: BorderRadius.circular(10)),
      child: child,
    );
  }
}
