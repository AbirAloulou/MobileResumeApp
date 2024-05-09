import 'dart:ui';
import 'package:animated_emoji/emoji.dart';
import 'package:animated_emoji/emojis.g.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume_app/theme_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
      return Scaffold(
        backgroundColor: themeProvider.themeData.colorScheme.background,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10, left: 10),
                      child: AnimatedEmoji(
                        AnimatedEmojis.graduationCap,
                        size: 50,
                        repeat: false,
                      ),
                    ),
                    Text(
                      AppLocalizations.of(context)!.edu,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        letterSpacing: 5,
                      ),
                    ),
                  ],
                ),
              ),
              //iit
              Padding(
                padding: const EdgeInsets.all(15),
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
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, left: 10, right: 10, bottom: 20),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: ImageFiltered(
                                imageFilter:
                                    ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                                child: const Image(
                                  image: AssetImage(
                                    "assets/iit.jpg",
                                  ),
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              AppLocalizations.of(context)!.engDeg,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              AppLocalizations.of(context)!.softEng,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.blueGrey),
                            ),
                            Text(
                              AppLocalizations.of(context)!.busInt,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.blueGrey),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        top: 50,
                        child: Column(
                          children: [
                            ClipOval(
                              child: Image.asset(
                                "assets/logo_iit.png",
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              AppLocalizations.of(context)!.iit,
                              style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              AppLocalizations.of(context)!.now,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //isims
              Padding(
                padding: const EdgeInsets.all(15),
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
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, left: 10, right: 10, bottom: 20),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: ImageFiltered(
                                imageFilter:
                                    ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                                child: const Image(
                                  image: AssetImage(
                                    "assets/isims.JPG",
                                  ),
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              AppLocalizations.of(context)!.bachDeg,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              AppLocalizations.of(context)!.compSci,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.blueGrey),
                            ),
                            Text(
                              AppLocalizations.of(context)!.dataAnBigData,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.blueGrey),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        top: 50,
                        child: Column(
                          children: [
                            ClipOval(
                              child: Image.asset(
                                "assets/logo_isims.jpg",
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              AppLocalizations.of(context)!.isIM,
                              style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.white),
                            ),
                            Text(
                              AppLocalizations.of(context)!.isIMs,
                              style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "2019 - 2022",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //Mongi Slim
              Padding(
                padding: const EdgeInsets.all(15),
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
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, left: 10, right: 10, bottom: 20),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: ImageFiltered(
                                imageFilter:
                                    ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                                child: const Image(
                                  image: AssetImage(
                                    "assets/mongi_slim.jpg",
                                  ),
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              AppLocalizations.of(context)!.baccDeg,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              AppLocalizations.of(context)!.maths,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.blueGrey),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 50,
                        child: Column(
                          children: [
                            ClipOval(
                              child: Image.asset(
                                "assets/logo_mongislim.jpg",
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              AppLocalizations.of(context)!.highSchool,
                              style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "2015 - 2019",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
