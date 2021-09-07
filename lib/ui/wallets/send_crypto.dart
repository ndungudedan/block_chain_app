import 'package:block_chain/widgets/custom_input_field.dart';
import 'package:block_chain/widgets/pop_button.dart';
import 'package:block_chain/widgets/top_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SendCrypto extends StatefulWidget {
  @override
  _SendCryptoState createState() => _SendCryptoState();
}

class _SendCryptoState extends State<SendCrypto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              PopButton(),
              TopTextWidget(title: 'Send To Bitnob User',subtitle: 'Provide the persons username',),
              CustomInputField(
                    labelText: 'BitBazuu username',
                  )
            ],
          ),
        ),
      ),
    );
  }
}
