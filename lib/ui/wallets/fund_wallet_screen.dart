import 'package:block_chain/common/app_colors.dart';
import 'package:block_chain/common/routes.dart';
import 'package:block_chain/widgets/auth_input_field.dart';
import 'package:block_chain/widgets/custom_button.dart';
import 'package:block_chain/widgets/custom_input_field.dart';
import 'package:block_chain/widgets/pop_button.dart';
import 'package:flutter/material.dart';

class FundWalletScreen extends StatefulWidget {
  @override
  _FundWalletScreenState createState() => _FundWalletScreenState();
}

class _FundWalletScreenState extends State<FundWalletScreen> {
  var _formKey = GlobalKey<FormState>();
  var _phoneController = TextEditingController();
  var _amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              PopButton(),
              SizedBox(
                height: 20,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'We care about \n',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 30)),
                TextSpan(
                    text: 'you',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: kcPrimaryColor, fontSize: 30))
              ])),
              SizedBox(
                height: 20,
              ),
              CustomInputField(
                labelText: 'Phone No.',
                inputType: TextInputType.text,
                controller: _phoneController,
              ),
              SizedBox(
                height: 20,
              ),
              CustomInputField(
                labelText: 'Amount',
                inputType: TextInputType.text,
                controller: _amountController,
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                  label: 'Next',
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.password_screen);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
