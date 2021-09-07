import 'package:block_chain/common/app_colors.dart';
import 'package:block_chain/common/assets.dart';
import 'package:block_chain/views/referral_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RefferalCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showGeneralDialog(
          barrierColor: Colors.transparent,
          barrierDismissible: false,
            context: context,
            pageBuilder: (BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,) {
              return ReferralDialog();
            });
      },
      child: Card(
        color: kcPrimaryColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), side: BorderSide()),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Refer & Earn',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 20, color: kcBackgroundColor1),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'You get the chance to win lots of prizes by inviting your friends to use BazuuBit',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 15, color: kcBackgroundColor1),
                  ),
                ],
              )),
              CircleAvatar(
                backgroundColor: whiteColor,
                child: Image.asset(Assets.gift),
              )
            ],
          ),
        ),
      ),
    );
  }
}
