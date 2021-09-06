import 'package:block_chain/common/app_colors.dart';
import 'package:block_chain/common/routes.dart';
import 'package:block_chain/widgets/auth_input_field.dart';
import 'package:block_chain/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class PasswordScreen extends StatefulWidget {
  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  var _confirmController = TextEditingController();
  var _passwordController = TextEditingController();
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
                  child: IconButton(icon: Icon(Icons.arrow_back_ios),
                  color: kcPrimaryColor,
                  iconSize: 30,
                  onPressed: (){
                    Navigator.pop(context);
                  },),
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
                labelText: 'Passworrd',
                password: true,
                trailing: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Show',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: kcPrimaryColor),
                  ),
                ),
                inputType: TextInputType.text,
                controller: _passwordController,
              ),
              SizedBox(
                height: 20,
              ),
              AuthInputField(
                labelText: 'Confirm Password',
                password: true,
                trailing: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Show',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: kcPrimaryColor),
                  ),
                ),
                inputType: TextInputType.text,
                controller: _passwordController,
              ),
               SizedBox(
                height: 50,
              ),
              CustomButton(label: 'Signup', onPressed: () {}),
              
            ],
          ),
        ),
      ),
    );
  }
}
