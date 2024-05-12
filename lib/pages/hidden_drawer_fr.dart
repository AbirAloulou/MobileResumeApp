import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:provider/provider.dart';
import 'package:resume_app/theme.dart';
import '../colors.dart';

import '../pages/about_me.dart';
import '../pages/appy_toons.dart';
import '../pages/contact.dart';
import '../pages/education.dart';
import '../pages/experience.dart';
import '../pages/home_page.dart';
import '../pages/lang.dart';
import '../pages/lang_interests.dart';
import '../pages/mode_toggle.dart';
import '../pages/projects.dart';
import '../pages/skills.dart';
import '../theme_provider.dart';

class HiddenDrawerFr extends StatefulWidget {
  const HiddenDrawerFr({super.key});

  @override
  State<HiddenDrawerFr> createState() => _HiddenDrawerFrState();
}

class _HiddenDrawerFrState extends State<HiddenDrawerFr> {
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
          name: 'À propos moi',
          baseStyle: myTextStyle,
          selectedStyle: mySelectedTextStyle,
          colorLineSelected: primary.shade900,
        ),
        const AboutMe(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Langues \n& Intérêts',
          baseStyle: myTextStyle,
          selectedStyle: mySelectedTextStyle,
          colorLineSelected: primary.shade900,
        ),
        const LangInt(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Compétences',
          baseStyle: myTextStyle,
          selectedStyle: mySelectedTextStyle,
          colorLineSelected: primary.shade900,
        ),
        const Skills(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Éducation',
          baseStyle: myTextStyle,
          selectedStyle: mySelectedTextStyle,
          colorLineSelected: primary.shade900,
        ),
        const Education(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Projets',
          baseStyle: myTextStyle,
          selectedStyle: mySelectedTextStyle,
          colorLineSelected: primary.shade900,
        ),
        const Projects(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Expérience',
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
          name: 'Mode Thème',
          baseStyle: myTextStyle,
          selectedStyle: mySelectedTextStyle,
          colorLineSelected: primary.shade900,
        ),
        const ModeToggle(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Langue',
          baseStyle: myTextStyle,
          selectedStyle: mySelectedTextStyle,
          colorLineSelected: primary.shade900,
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
