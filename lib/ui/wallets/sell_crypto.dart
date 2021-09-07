import 'package:block_chain/views/custom_drop_view.dart';
import 'package:block_chain/widgets/auth_input_field.dart';
import 'package:block_chain/widgets/custom_button.dart';
import 'package:block_chain/widgets/custom_input_field.dart';
import 'package:block_chain/widgets/pop_button.dart';
import 'package:block_chain/widgets/top_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SellCrypto extends StatefulWidget {
  @override
  _SellCryptoState createState() => _SellCryptoState();
}

class _SellCryptoState extends State<SellCrypto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              PopButton(),
              TopTextWidget(title: 'Sell Bitcoin',subtitle: 'How much Bitcoin would you want to sell?',),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomDropView(),
                  SizedBox(width: 20,),
                  Expanded(
                    child: CustomInputField(
                      labelText: 'Amount',
                    ),
                  )
                ],
              ),
              Center(child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('0.00595BTC',style: Theme.of(context).textTheme.bodyText1,),
              )),
              CustomButton(
                label: 'Continue', 
              onPressed: () {
      
              })
            ],
          ),
        ),
      ),
    );
  }
}