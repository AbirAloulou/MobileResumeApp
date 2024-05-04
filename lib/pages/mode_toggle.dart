import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume_app/theme.dart';
import '../theme_provider.dart';

class ModeToggle extends StatefulWidget {
  const ModeToggle({super.key});

  @override
  State<ModeToggle> createState() => _ModeToggleState();
}

class _ModeToggleState extends State<ModeToggle> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
      return Scaffold(
        backgroundColor: themeProvider.themeData.colorScheme.background,
        body: Center(
          child: GestureDetector(
            onTap: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Provider.of<ThemeProvider>(context).themeData == lightMode
                      ? Icons.wb_sunny
                      : Icons.nightlight_round,
                  color:
                      Provider.of<ThemeProvider>(context).themeData == lightMode
                          ? Colors.white
                          : Colors.black,
                  size: 100,
                ),
                Text(
                  Provider.of<ThemeProvider>(context).themeData == lightMode
                      ? 'Light Mode'
                      : 'Dark Mode',
                  style: TextStyle(
                    color: Provider.of<ThemeProvider>(context).themeData ==
                            lightMode
                        ? Colors.white
                        : Colors.black,
                    fontSize: 30,
                  ),
                ),
                Text(
                  'tap to switch',
                  style: TextStyle(
                    color: Provider.of<ThemeProvider>(context).themeData ==
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
      );
    });
  }
}
