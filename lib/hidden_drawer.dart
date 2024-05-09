import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:provider/provider.dart';
import 'package:resume_app/colors.dart';

import 'package:resume_app/pages/about_me.dart';
import 'package:resume_app/pages/home_page.dart';
import 'package:resume_app/pages/lang.dart';
import 'package:resume_app/pages/lang_interests.dart';
import 'package:resume_app/pages/mode_toggle.dart';
import 'package:resume_app/pages/skills.dart';
import 'pages/Contact.dart';
import 'pages/Education.dart';
import 'pages/appy_toons.dart';
import 'pages/experience.dart';
import 'pages/projects.dart';
import 'theme.dart';
import 'theme_provider.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];
  final myTextStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
      color: Colors.blueGrey.shade700);
  final mySelectedTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: primary.shade800,
  );

  @override
  void initState() {
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'main()',
          baseStyle: myTextStyle,
          selectedStyle: mySelectedTextStyle,
          colorLineSelected: primary.shade900,
        ),
        const HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'About Me',
          baseStyle: myTextStyle,
          selectedStyle: mySelectedTextStyle,
          colorLineSelected: primary.shade900,
        ),
        const AboutMe(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Languages \n& Interests',
          baseStyle: myTextStyle,
          selectedStyle: mySelectedTextStyle,
          colorLineSelected: primary.shade900,
        ),
        const LangInt(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Skills',
          baseStyle: myTextStyle,
          selectedStyle: mySelectedTextStyle,
          colorLineSelected: primary.shade900,
        ),
        const Skills(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Education',
          baseStyle: myTextStyle,
          selectedStyle: mySelectedTextStyle,
          colorLineSelected: primary.shade900,
        ),
        const Education(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Projects',
          baseStyle: myTextStyle,
          selectedStyle: mySelectedTextStyle,
          colorLineSelected: primary.shade900,
        ),
        const Projects(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Experience',
          baseStyle: myTextStyle,
          selectedStyle: mySelectedTextStyle,
          colorLineSelected: primary.shade900,
        ),
        const Experience(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Appy Toons',
          baseStyle: myTextStyle,
          selectedStyle: mySelectedTextStyle,
          colorLineSelected: primary.shade900,
        ),
        const AppyToons(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Contact',
          baseStyle: myTextStyle,
          selectedStyle: mySelectedTextStyle,
          colorLineSelected: primary.shade900,
        ),
        const Contact(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Theme Mode',
          baseStyle: myTextStyle,
          selectedStyle: mySelectedTextStyle,
          colorLineSelected: primary.shade900,
        ),
        const ModeToggle(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Language',
          baseStyle: myTextStyle,
          selectedStyle: mySelectedTextStyle,
          colorLineSelected: primary.shade900,
          // onTap: () {
          //   MainApp.of(context)
          //       ?.setLocale(Locale.fromSubtags(languageCode: 'fr'));
          // },
        ),
        const Language(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      // backgroundColorMenu: primary.shade100,
      backgroundColorMenu:
          Provider.of<ThemeProvider>(context).themeData == lightMode
              ? primary.shade100
              : blackmode.shade100,
      screens: _pages,
      initPositionSelected: 0,
      slidePercent: 50,
      withAutoTittleName: false,
      // backgroundColorAppBar: const Color(0xFFF7CBCB),
      backgroundColorAppBar:
          Provider.of<ThemeProvider>(context).themeData == lightMode
              ? const Color(0xFFF7CBCB)
              : blackmode.shade100,
    );
  }
}
