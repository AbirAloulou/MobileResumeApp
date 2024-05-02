import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume_app/theme_provider.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
      return Scaffold(
        backgroundColor: themeProvider.themeData.colorScheme.background,
        body: Text("projects"),
      );
    });
  }
}
