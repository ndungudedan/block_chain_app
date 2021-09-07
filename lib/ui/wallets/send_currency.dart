import 'package:block_chain/widgets/auth_input_field.dart';
import 'package:block_chain/widgets/pop_button.dart';
import 'package:block_chain/widgets/top_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SendCurrency extends StatefulWidget {
  @override
  _SendCurrencyState createState() => _SendCurrencyState();
}

class _SendCurrencyState extends State<SendCurrency> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          PopButton(),
          TopTextWidget(title: 'Send To Bitnob User',subtitle: 'Provide the persons username',),
          AuthInputField(
                labelText: 'BitBazuu username',
              )
        ],
      ),
    );
  }
}
