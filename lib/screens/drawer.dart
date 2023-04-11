import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:stop/constants.dart';
import 'package:stop/screens/categories.dart';
import 'package:stop/screens/home.dart';
import 'package:stop/screens/timer_settings.dart';

class SideDrawer extends StatefulWidget {
  const SideDrawer({Key? key}) : super(key: key);

  @override
  State<SideDrawer> createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  List<ScreenHiddenDrawer> _pages = [];

  final myTextStyle = GoogleFonts.lato(
        fontSize: 22,
        color: kLetterColor,
        fontWeight: FontWeight.w500,
      );  

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
        name: kDrawerCategoriesText, 
        selectedStyle: myTextStyle), 
        const Categories()),

      ScreenHiddenDrawer(
        ItemHiddenMenu(
        colorLineSelected: kResetColor,
        baseStyle: myTextStyle,
        name: kDrawerTimerText, 
        selectedStyle: myTextStyle), 
        const TimerSettings()),
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
