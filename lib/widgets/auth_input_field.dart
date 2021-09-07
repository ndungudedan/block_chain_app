import 'package:block_chain/common/app_colors.dart';
import 'package:block_chain/common/ui_helpers.dart';
import 'package:block_chain/widgets/block_text.dart';
import 'package:flutter/material.dart';

class AuthInputField extends StatelessWidget {
  final String hintPlaceHolder;
  final String? labelText;
  final Color? filledColor;
  final ValueChanged<String?>? onSaved;
  final String? label;
  final int? maxLines;
  final Widget? trailing;
  final TextInputType? inputType;
  final bool password;
  final bool? enabled;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final void Function()? onTrailingTapped;
  final ValueChanged<String>? onChanged;

  const AuthInputField({
    Key? key,
    this.enabled,
    this.onSaved,
    this.filledColor = kcBackgroundColor2,
    this.hintPlaceHolder = '',
    this.labelText,
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
          enabled: enabled,
          onChanged: onChanged,
          keyboardType: keyboardType,
          autofocus: false,
          obscureText: password,
          textInputAction: TextInputAction.done,
          maxLines: maxLines ?? 1,
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: whiteColor),
          decoration: InputDecoration(
            fillColor: kcBackgroundColor3,
            filled: true,
            suffixIcon: trailing != null
                ? GestureDetector(
                    onTap: onTrailingTapped,
                    child: trailing,
                  )
                : null,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            hintText: hintPlaceHolder,
            labelText: labelText,
            labelStyle: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: whiteColor),
            hintStyle: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: whiteColor),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kcPrimaryColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kcPrimaryColor),
            ),
          ),
        ),
      ],
    );
  }
}
