import 'package:block_chain/common/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FancyActionBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration:BoxDecoration(
            color: kcPrimaryColor,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: kcBackgroundColor1,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: kcPrimaryColor,
                  )),
            ),
          ),
        ),
        SizedBox(height: 10,),
        Text('Buy',style: Theme.of(context).textTheme.bodyText1,)
      ],
    );
  }
}
