import 'package:block_chain/common/app_colors.dart';
import 'package:block_chain/common/routes.dart';
import 'package:block_chain/widgets/auth_input_field.dart';
import 'package:block_chain/widgets/custom_button.dart';
import 'package:block_chain/widgets/pop_button.dart';
import 'package:block_chain/widgets/top_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileSettings extends StatefulWidget {
  @override
  _ProfileSettingsState createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  var _emailController = TextEditingController();
  var _firstController = TextEditingController();
  var _lastController = TextEditingController();
  var _phoneController = TextEditingController();
  var _usernameController = TextEditingController();
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
            TopTextWidget(
                subtitle: 'Edit your profile details here',
                title: 'Profile Settings'),
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
              labelText: 'Username',
              inputType: TextInputType.text,
              controller: _usernameController,
            ),
            SizedBox(
              height: 20,
            ),
            AuthInputField(
              labelText: 'Email',
              enabled: false,
              inputType: TextInputType.emailAddress,
              controller: _emailController,
            ),
            SizedBox(
              height: 20,
            ),
            AuthInputField(
              labelText: 'Phone',
              enabled: false,
              inputType: TextInputType.phone,
              controller: _phoneController,
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
                label: 'Save Changes',
                onPressed: () {
                  Navigator.pushNamed(context, Routes.password_screen);
                }),
          ],
        ),
      ),
    ));
  }
}
