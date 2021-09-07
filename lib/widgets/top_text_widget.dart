import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopTextWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  TopTextWidget({required this.subtitle, required this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        RichText(
            text: TextSpan(children: [
          TextSpan(
              text: title +'\n',
              style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 20)),
          TextSpan(
              text: subtitle,
              style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith( fontSize: 15))
        ])),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
