import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:top2000/globals.dart';
import 'package:top2000/pages/playlist.dart';
import 'package:top2000/pages/settings.dart';
import 'package:top2000/pages/home.dart';

class Navigation extends StatelessWidget {
  Navigation({super.key});

  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return <Widget>[const Home(), const Playlist(), const Settings()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems(BuildContext context) {
    Color inactiveColor =
        isDarkMode ? Colors.white70 : CupertinoColors.systemGrey;
    return <PersistentBottomNavBarItem>[
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        title: (FlutterI18n.translate(context, 'navigation.home')),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: inactiveColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.music_note_list),
        title: (FlutterI18n.translate(context, 'navigation.playlist')),
        activeColorPrimary: Colors.red,
        inactiveColorPrimary: inactiveColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.gear),
        title: (FlutterI18n.translate(context, 'navigation.settings')),
        activeColorPrimary: Colors.green,
        inactiveColorPrimary: inactiveColor,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(context),
      confineInSafeArea: true,
      backgroundColor: isDarkMode
          ? Colors.grey.shade800
          : Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: isDarkMode ? Colors.grey.shade800 : Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style9, // Choose the nav bar style with this property.
    );
  }
}
