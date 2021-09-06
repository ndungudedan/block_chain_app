import 'package:block_chain/common/app_colors.dart';
import 'package:block_chain/ui/index/account_screen.dart';
import 'package:block_chain/ui/index/home_screen.dart';
import 'package:block_chain/ui/index/wallets_screen.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class Index extends StatelessWidget {
PersistentTabController _controller = PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style6, // Choose the nav bar style with this property.
    );
  }

  List<Widget> _buildScreens() {
        return [
          HomeScreen(),
          WalletScreen(),
          AccountScreen()
        ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
        return [
            PersistentBottomNavBarItem(
                icon: Icon(Icons.home),
                title: ("Home"),
                activeColorPrimary: kcPrimaryColor,
                inactiveColorPrimary: greyColor,
            ),
            PersistentBottomNavBarItem(
                icon: Icon(Icons.wallet_travel),
                title: ("Wallets"),
                activeColorPrimary: kcPrimaryColor,
                inactiveColorPrimary: greyColor,
            ),
            PersistentBottomNavBarItem(
                icon: Icon(Icons.account_box_rounded),
                title: ("Account"),
                activeColorPrimary: kcPrimaryColor,
                inactiveColorPrimary: greyColor,
            ),
        ];
    }
}
