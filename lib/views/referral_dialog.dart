import 'package:block_chain/common/app_colors.dart';
import 'package:block_chain/common/assets.dart';
import 'package:block_chain/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReferralDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 150, 30, 150),
      child: Card(
        color: kcBackgroundColor3,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: CircleAvatar(
                backgroundColor: kcPrimaryColor,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                'Refer & Earn',
                style:
                    Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 40,
                backgroundColor: whiteColor,
                child: Image.asset(Assets.gift,scale: 1,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                  'Invite your friends to BitBazu and you both win exciting rewards when they sign up',style:
                    Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 15),),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Divider(color: whiteColor,),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('c6t7dgsg7',style:
                    Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 15),),
            ),
            CustomButton(label: 'Share your invite code', onPressed: () {})
          ],
        ),
      ),
    );
  }
}
