import 'package:block_chain/common/styles.dart';
import 'package:flutter/material.dart';

class BlockText  extends StatelessWidget {
  final String text;
  final TextStyle style;

  BlockText .headingOne(this.text) : style = heading1Style;
  BlockText .headingTwo(this.text) : style = heading2Style;
  BlockText .headingThree(this.text) : style = heading3Style;
  BlockText .headingFour(this.text) : style = heading4Style;
  BlockText .headline(this.text) : style = headlineStyle;
  BlockText .bodyText(this.text) : style = bodyStyle;
  BlockText .subheading(this.text) : style = subheadingStyle;
  BlockText .caption(this.text) : style = captionStyle;
  BlockText .extraSmallText(this.text) : style = extraSmallStyle;
  BlockText .authBtnStyle(this.text) : style = authBtnStyle;
  BlockText .dropDownTitleStyle(this.text) : style = dropDownTitleTextStyle;
  BlockText .dropDownBodyTextStyle(this.text) : style = dropDownBodyTextStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}