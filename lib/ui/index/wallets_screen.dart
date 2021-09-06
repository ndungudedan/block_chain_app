import 'package:block_chain/common/app_colors.dart';
import 'package:block_chain/common/assets.dart';
import 'package:block_chain/views/home_wallets_view.dart';
import 'package:block_chain/views/wallets_page.dart';
import 'package:block_chain/widgets/wallet_curr_card.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget {
  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State {
  List<SlideItem> slideList = [
    SlideItem(Assets.card_background, 'Get your tickets on the go at mtickets',
        '12:00-13:30'),
    SlideItem(Assets.card_background, 'Get your tickets on the go at mtickets',
        '14:35-15:30'),
    SlideItem(Assets.card_background, 'Get your tickets on the go at mtickets',
        '12:00-13:30'),
  ];
  final _controller = new PageController();
  var selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kcBackgroundColor1,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DotsIndicator(
                  dotsCount: slideList.length,
                  position: selectedIndex.toDouble(),
                  decorator: DotsDecorator(
                    color: Colors.grey[50]!,
                    activeColor: Colors.greenAccent,
                    size: const Size.square(9.0),
                    activeSize: const Size(18.0, 9.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
                Expanded(
                  child: PageView.builder(
                      controller: _controller,
                      itemCount: slideList.length,
                      onPageChanged: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      itemBuilder: (BuildContext context, index) {
                        return WalletsPage();
                      }),
                ),
                    
                ],
            
          ),
        ),
      ),
    );
  }
}
