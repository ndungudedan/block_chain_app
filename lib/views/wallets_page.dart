import 'package:block_chain/common/assets.dart';
import 'package:block_chain/views/home_wallets_view.dart';
import 'package:block_chain/views/transactions_view.dart';
import 'package:block_chain/widgets/fancy_action_btn.dart';
import 'package:block_chain/widgets/wallet_curr_card.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WalletsPage extends StatefulWidget {
  @override
  _WalletsPageState createState() => _WalletsPageState();
}

class _WalletsPageState extends State {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'USD Wallet',
            style:
                Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text(
              'Worry no more',
              style:
                  Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 10),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          CurrencyCard(),
          Container(
            height: 100,
            child: ListView.builder(
              itemCount: 5,
              padding: EdgeInsets.all(0),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: FancyActionBtn(),
              );
            }),
          ),
          Divider(),
            TransactionsView()
        ],
      ),
    );
  }
}
