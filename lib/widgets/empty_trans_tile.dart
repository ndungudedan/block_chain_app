import 'package:block_chain/common/app_colors.dart';
import 'package:block_chain/common/assets.dart';
import 'package:flutter/material.dart';

class EmptyTransactionTile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Card(      
      color: kcBackgroundColor3,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), side: BorderSide()),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                    'You dont have any transactions yet.',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                  ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: whiteColor,
                child: Image.asset(Assets.wallet),
              ),
            )
          ],
        ),
      ),
    );
  }

}