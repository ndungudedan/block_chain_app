import 'package:block_chain/common/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FancyActionBtn extends StatelessWidget {
final GestureTapCallback onTap;
final String title;
final IconData icon;
FancyActionBtn({required this.icon,required this.onTap,required this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            decoration:BoxDecoration(
              color: kcPrimaryColor,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: kcBackgroundColor1,
                child: Icon(
                      icon,
                      color: kcPrimaryColor,
                    )
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        Text(title,style: Theme.of(context).textTheme.bodyText1,)
      ],
    );
  }
}
