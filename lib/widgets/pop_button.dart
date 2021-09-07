import 'package:block_chain/common/app_colors.dart';
import 'package:flutter/material.dart';

class PopButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: CircleAvatar(
        backgroundColor: kcAccentColor,
        child: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: kcPrimaryColor,
          iconSize: 30,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
