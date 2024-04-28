import 'package:flutter/material.dart';
import 'package:resume_app/hidden_drawer.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HiddenDrawer(),
      // theme: ThemeData(primaryColor: primary),
    );
  }
}
