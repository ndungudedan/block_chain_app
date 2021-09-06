import 'package:block_chain/common/app_colors.dart';
import 'package:block_chain/common/assets.dart';
import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        shape:BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(Assets.card_background))
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'USD',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 20,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 80,),
              Text(
                '&0.00',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 15),
              ),
            ],
          )),
          CircleAvatar(
            backgroundColor: kcAccentColor,
            child: CircleAvatar(
              backgroundColor: kcPrimaryColor,
              child: Image.asset(Assets.dollar),
            ),
          )
        ],
      ),
    );
  
  }

}