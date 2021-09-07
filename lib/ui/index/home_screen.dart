import 'package:block_chain/common/app_colors.dart';
import 'package:block_chain/common/routes.dart';
import 'package:block_chain/views/home_wallets_view.dart';
import 'package:block_chain/views/transactions_view.dart';
import 'package:block_chain/widgets/block_text.dart';
import 'package:block_chain/widgets/refer_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlockText.bodyText('Dedan'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                child: HomeWalletView(),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: kcPrimaryColor,
                              fixedSize: Size(double.infinity, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide())),
                          child: Text(
                            'Pay Bills',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: kcBackgroundColor1),
                          )),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.fund_wallet);
                          },
                          style: ElevatedButton.styleFrom(
                              primary: kcPrimaryColor,
                              fixedSize: Size(double.infinity, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide())),
                          child: Text(
                            'Fund Wallet',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: kcBackgroundColor1),
                          )),
                    ),
                  ],
                ),
              ),
              RefferalCard(),
              TransactionsView()
            ],
          ),
        ),
      ),
    );
  }
}
