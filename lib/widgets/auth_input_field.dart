import 'package:block_chain/common/app_colors.dart';
import 'package:block_chain/common/ui_helpers.dart';
import 'package:block_chain/widgets/block_text.dart';
import 'package:flutter/material.dart';

class AuthInputField extends StatelessWidget {
  final String hintPlaceHolder;
  final Color? filledColor;
  final ValueChanged<String?>? onSaved;
  final String? label;
  final int? maxLines;
  final Widget? trailing;
  final TextInputType? inputType;
  final bool password;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final void Function()? onTrailingTapped;
  final ValueChanged<String>? onChanged;

  const AuthInputField({
    Key? key,
    this.onSaved,
    this.filledColor = kcBackgroundColor2,
    this.hintPlaceHolder = '',
    this.label,
    this.maxLines,
    this.keyboardType,
    this.inputType,
    this.trailing,
    this.onTrailingTapped,
    this.password = false,
    this.controller,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // if label is empty, label text will not be visible
        Visibility(
          visible: label == null ? false : true,
          child: BlockText.subheading(label ?? ''),
        ),

        // spacing
        verticalSpaceRegular,

        TextField(
          onChanged: onChanged,
          keyboardType: keyboardType,
          autofocus: false,
          obscureText: password,
          cursorColor: Theme.of(context).accentColor,
          textInputAction: TextInputAction.done,
          maxLines: maxLines ?? 1,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          decoration: InputDecoration(
            fillColor: filledColor,
            filled: false,
            suffixIcon: trailing != null
                ? GestureDetector(
                    onTap: onTrailingTapped,
                    child: trailing,
                  )
                : null,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            hintText: hintPlaceHolder,
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: leftNavBarColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: bodyColor),
            ),
          ),
        ),
      ],
    );
  }
}