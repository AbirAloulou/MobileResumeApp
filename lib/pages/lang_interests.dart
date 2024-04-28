import 'package:animated_emoji/animated_emoji.dart';
import 'package:flutter/material.dart';
import 'package:country_flags/country_flags.dart';
import 'package:ionicons/ionicons.dart';

import '../colors.dart';

class LangInt extends StatefulWidget {
  const LangInt({super.key});

  @override
  State<LangInt> createState() => _LangIntState();
}

class _LangIntState extends State<LangInt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromRGBO(238, 239, 245, 1),
      backgroundColor: primary.shade300,
      body: Center(
        child: Column(
          children: [
            //section 1 : languages
            Column(
              children: [
                //languages
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10, left: 10),
                        child: AnimatedEmoji(
                          AnimatedEmojis.nerdFace,
                          size: 50,
                        ),
                      ),
                      const Text(
                        "LANGUAGES",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          letterSpacing: 5,
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    margin:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
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
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 20, bottom: 15),
                            child: Row(
                              children: [
                                CountryFlag.fromCountryCode(
                                  'SA',
                                  height: 48,
                                  width: 62,
                                  borderRadius: 8,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: Text(
                                    "Arabic",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        color: Colors.black),
                                  ),
                                ),
                                Text(
                                  "(Native language)",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                      color: Colors.grey[600]),
                                ),
                              ],
                            ),
                          ),
                          //French
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 20, bottom: 15),
                            child: Row(
                              children: [
                                CountryFlag.fromCountryCode(
                                  'FR',
                                  height: 48,
                                  width: 62,
                                  borderRadius: 8,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text("French",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          color: Colors.black)),
                                ),
                              ],
                            ),
                          ),
                          //English
                          Row(
                            children: [
                              CountryFlag.fromCountryCode(
                                'US',
                                height: 48,
                                width: 62,
                                borderRadius: 8,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text("English",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        color: Colors.black)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                //Arabic
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //interests
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10, left: 10),
                        child: AnimatedEmoji(
                          AnimatedEmojis.heartGrow,
                          size: 50,
                        ),
                      ),
                      const Text(
                        "INTERESTS",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          letterSpacing: 5,
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    margin:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
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
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      boxShadow: [
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
                                    child: Icon(
                                      Ionicons.color_palette,
                                      color: primary.shade900,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text(
                                      "Painting",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      boxShadow: [
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
                                    child: Icon(
                                      Ionicons.game_controller,
                                      color: primary.shade900,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text(
                                      "Video Games",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      boxShadow: [
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
                                    child: Icon(
                                      Ionicons.brush,
                                      color: primary.shade900,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text(
                                      "Digital Art",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
