import 'dart:ui';

import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:resume_app/main.dart';
import 'package:provider/provider.dart';
import 'package:resume_app/theme_provider.dart';

import '../theme.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
      return Scaffold(
        body: Stack(
          children: [
            // Background image
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bgLang.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  color:
                      Colors.black.withOpacity(0.3), // Adjust opacity as needed
                ),
              ),
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  final mainAppState = MainApp.of(context);
                  if (mainAppState != null) {
                    final currentLocale = mainAppState.currentLocale;
                    final newLocale = currentLocale.languageCode == 'fr'
                        ? Locale('en')
                        : Locale('fr');
                    mainAppState.setLocale(newLocale);
                  }
                },
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: themeProvider.themeData.colorScheme
                        .background, // Theme background color
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CountryFlag.fromCountryCode(
                        AppLocalizations.of(context)!.flag,
                        height: 48,
                        width: 62,
                        borderRadius: 8,
                      ),
                      SizedBox(height: 8),
                      Text(
                        AppLocalizations.of(context)!.lan,
                      ),
                      SizedBox(height: 8),
                      Text(
                        AppLocalizations.of(context)!.language,
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        AppLocalizations.of(context)!.tap,
                        style: TextStyle(
                          color:
                              Provider.of<ThemeProvider>(context).themeData ==
                                      lightMode
                                  ? Colors.grey.shade600
                                  : Colors.grey.shade200,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
