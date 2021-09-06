import 'package:block_chain/common/assets.dart';
import 'package:block_chain/widgets/wallet_curr_card.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class HomeWalletView extends StatefulWidget {
  @override
  _HomeWalletViewState createState() => _HomeWalletViewState();
}

class SlideItem {
  String image;
  String name;
  String time;

  SlideItem(this.image, this.name, this.time);
}

class _HomeWalletViewState extends State<HomeWalletView> {
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
                  return CurrencyCard();
                }),
          ),
              
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
          ),],
      
    );
  }
}
