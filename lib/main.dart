import 'package:flutter/material.dart';
import 'package:resume_app/hidden_drawer.dart';
import 'package:provider/provider.dart';
import 'package:resume_app/theme_provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:resume_app/l10n/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatefulWidget {
  static _MainAppState? of(BuildContext context) =>
      context.findAncestorStateOfType<_MainAppState>();
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final GlobalKey<_MainAppState> mainAppStateKey = GlobalKey<_MainAppState>();
  Locale _locale = Locale('en');
  Locale get currentLocale => _locale;
  void setLocale(Locale value) {
    setState(() {
      _locale = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HiddenDrawer(),
          theme: themeProvider.themeData,
          supportedLocales: L10n.all,
          // locale: const Locale('en'),
          locale: _locale,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
        );
      },
    );
  }
}
