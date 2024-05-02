import 'package:animated_emoji/animated_emoji.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';
import 'package:resume_app/theme_provider.dart';

import '../colors.dart';
import 'config/global.params.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
      return Scaffold(
        backgroundColor: themeProvider.themeData.colorScheme.background,
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 15, right: 20, left: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: AnimatedEmoji(
                          AnimatedEmojis.armMechanical,
                          size: 50,
                        ),
                      ),
                      const Text(
                        "SKILLS",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          letterSpacing: 5,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...(GlobalParams.skills).map((item) {
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.white54,
                                blurRadius: 12,
                                // offset: Offset(4, 8), // Shadow position
                              ),
                              BoxShadow(
                                color: Colors.black38,
                                blurRadius: 7,
                                // offset: Offset(4, 8), // Shadow position
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, bottom: 10, left: 15),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    item['icon'],
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text(
                                        '${item['title']}',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: Colors.black),
                                        softWrap: true,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  for (var child in item['children']) ...[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 15, left: 50),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          child['childIcon'],
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: Text(
                                              child['name'],
                                              style: const TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black),
                                              softWrap: true,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
