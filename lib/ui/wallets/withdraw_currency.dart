import 'package:block_chain/common/app_colors.dart';
import 'package:block_chain/widgets/auth_input_field.dart';
import 'package:block_chain/widgets/custom_button.dart';
import 'package:block_chain/widgets/custom_input_field.dart';
import 'package:block_chain/widgets/pop_button.dart';
import 'package:block_chain/widgets/top_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WithdrawCurrency extends StatefulWidget {
  @override
  _WithdrawCurrencyState createState() => _WithdrawCurrencyState();
}

class _WithdrawCurrencyState extends State<WithdrawCurrency> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              PopButton(),
              TopTextWidget(title: 'How much do you want to withdraw?',subtitle: 'Enter the amount',),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Balance: ',style: Theme.of(context).textTheme.bodyText1!),
                    Text('0.00',style: Theme.of(context).textTheme.bodyText1!.copyWith(color: kcPrimaryColor),),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Icon(Icons.money)
                  ),
                  Expanded(
                    child: CustomInputField(
                          labelText: 'Amount',
                        ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Transactio Fee ',style: Theme.of(context).textTheme.bodyText1!),
                    Text('0.00',style: Theme.of(context).textTheme.bodyText1!.copyWith(color: kcPrimaryColor),),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text('You`ll receive ',style: Theme.of(context).textTheme.bodyText1!),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text('0.00',style: Theme.of(context).textTheme.bodyText1!.copyWith(color: kcPrimaryColor)),
                ),
              ),
              CustomButton(label: 'Continue', onPressed: (){
      
              })
            ],
          ),
        ),
      ),
    );
  }
}
