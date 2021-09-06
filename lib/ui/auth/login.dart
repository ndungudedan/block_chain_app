import 'package:block_chain/common/app_colors.dart';
import 'package:block_chain/common/routes.dart';
import 'package:block_chain/widgets/auth_input_field.dart';
import 'package:block_chain/widgets/block_text.dart';
import 'package:block_chain/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _emailController = TextEditingController();
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
                height: 40,
              ),
              AuthInputField(
                labelText: 'Email',
                inputType: TextInputType.emailAddress,
                controller: _emailController,
              ),
              SizedBox(
                height: 50,
              ),
              AuthInputField(
                labelText: 'Password',
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
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(color: kcPrimaryColor),
                    )),
              ),
              SizedBox(
                height: 50,
              ),
              CustomButton(
                  label: 'LOGIN',
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.index);
                  }),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.register);
                  },
                  child: Text(
                    'Signup',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: kcPrimaryColor),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
