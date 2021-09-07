import 'package:block_chain/common/app_colors.dart';
import 'package:block_chain/common/assets.dart';
import 'package:block_chain/common/routes.dart';
import 'package:block_chain/widgets/setting_container.dart';
import 'package:block_chain/widgets/setting_tile.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kcBackgroundColor1,
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              height: 200,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(Assets.card_background))),
              child: Column(
                children: [
                  Text(
                    'Dedan Ndungu',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '@centa',
                    style: Theme.of(context).textTheme.bodyText1,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Text(
                    'General',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  SettingContainer(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SettingTile(
                          label: 'Profile Settings',
                          onTap: () {
                            Navigator.pushNamed(
                                context, Routes.profile_settings);
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Security',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  SettingContainer(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SettingTile(
                          label: 'Change Password',
                          onTap: () {
                            Navigator.pushNamed(
                                context, Routes.change_password);
                          },
                        ),
                        SettingTile(
                          label: 'Change Pin',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SettingContainer(
                    child: SettingTile(label: 'Rate App',onTap: (){
                      
                    },),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Container(
                        decoration: BoxDecoration(
                            color: kcAccentColor,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            'v1.0.0',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: kcPrimaryColor),
                          ),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
