import 'package:block_chain/common/app_colors.dart';
import 'package:block_chain/widgets/auth_input_field.dart';
import 'package:block_chain/widgets/custom_button.dart';
import 'package:block_chain/widgets/pop_button.dart';
import 'package:block_chain/widgets/top_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
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
              PopButton(),
              TopTextWidget(subtitle: '', title: 'Change Password'),
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
                  CustomButton(label: 'Save Changes', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
