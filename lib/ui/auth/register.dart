import 'package:block_chain/common/app_colors.dart';
import 'package:block_chain/common/routes.dart';
import 'package:block_chain/widgets/auth_input_field.dart';
import 'package:block_chain/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var _emailController = TextEditingController();
  var _firstController = TextEditingController();
  var _lastController = TextEditingController();
  var _referralController = TextEditingController();
  var _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: CircleAvatar(
                  backgroundColor: kcAccentColor,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: kcPrimaryColor,
                    iconSize: 30,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
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
              AuthInputField(
                labelText: 'First Name',
                inputType: TextInputType.text,
                controller: _firstController,
              ),
              SizedBox(
                height: 20,
              ),
              AuthInputField(
                labelText: 'Last Name',
                inputType: TextInputType.text,
                controller: _lastController,
              ),
              SizedBox(
                height: 20,
              ),
              AuthInputField(
                labelText: 'Email',
                inputType: TextInputType.emailAddress,
                controller: _emailController,
              ),
              SizedBox(
                height: 20,
              ),
              AuthInputField(
                labelText: 'Referral Code (optional)',
                inputType: TextInputType.text,
                controller: _referralController,
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
