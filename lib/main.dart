import 'package:flutter/material.dart';
import 'package:resume_app/hidden_drawer.dart';
import 'package:provider/provider.dart';
import 'package:resume_app/theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HiddenDrawer(),
          theme: themeProvider.themeData,
        );
      },
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return const MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     home: HiddenDrawer(),
  //     theme: Provider.of<ThemeProvider>(context).themeData,
  //   );
  // }
}
