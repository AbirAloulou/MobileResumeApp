import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:resume_app/main.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            // MainApp.of(context)?.setLocale(Locale.fromSubtags(languageCode: 'fr'));

            // Locale currentLocale = Localizations.localeOf(context);
            // print(currentLocale);
            // Locale newLocale = currentLocale.languageCode == 'en'
            //     ? Locale('fr')
            //     : Locale('en');
            // print(newLocale);
            // MainApp.of(context)?.setLocale(newLocale);

            MainApp.of(context)
                ?.setLocale(Locale.fromSubtags(languageCode: 'fr'));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Language',
              ),
              Text(
                AppLocalizations.of(context)!.language,
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
