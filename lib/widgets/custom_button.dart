import 'package:block_chain/common/app_colors.dart';
import 'package:block_chain/widgets/block_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  CustomButton({required this.label, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(double.infinity, 50),
        primary: kcPrimaryColor,
        shape: BeveledRectangleBorder(side: BorderSide(),borderRadius:BorderRadius.circular(5))
      ),
        onPressed: onPressed, 
        child: Text(label,style: Theme.of(context).textTheme.bodyText1!.copyWith(color: kcBackgroundColor1),));
  }
}
