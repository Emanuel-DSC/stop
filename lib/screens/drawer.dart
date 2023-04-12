import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:stop/constants.dart';
import 'package:stop/screens/categories.dart';
import 'package:stop/screens/home.dart';
import 'package:stop/screens/timer.dart';

class SideDrawer extends StatefulWidget {
  const SideDrawer({Key? key}) : super(key: key);

  @override
  State<SideDrawer> createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  List<ScreenHiddenDrawer> _pages = [];

  @override
  void initState() {
    super.initState();

    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
        colorLineSelected: kResetColor,
        baseStyle: myTextStyle,
        name: kDrawerHomeText, 
        selectedStyle: myTextStyle), 
        const MyHomePage()),

      ScreenHiddenDrawer(
        ItemHiddenMenu(
        colorLineSelected: kResetColor,
        baseStyle: myTextStyle,
        name: kDrawerTimerText, 
        selectedStyle: myTextStyle), 
        const TimerSettings()),

      ScreenHiddenDrawer(
        ItemHiddenMenu(
        colorLineSelected: kResetColor,
        baseStyle: myTextStyle,
        name: kDrawerCategoriesText, 
        selectedStyle: myTextStyle), 
        const Categories()),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      elevationAppBar: 0,
      backgroundColorAppBar: kBgColor,
      backgroundColorMenu: kDrawerColor, 
      screens: _pages,
      initPositionSelected: 0,
      slidePercent: 40,
      contentCornerRadius: 30,
    );
  }
}
