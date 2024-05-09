import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';
import 'package:resume_app/pages/maps.dart';
import 'package:resume_app/theme_provider.dart';
import '../colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return Scaffold(
          backgroundColor: themeProvider.themeData.colorScheme.background,
          body: SingleChildScrollView(
            child: Column(
              children: [
                //first container
                Padding(
                  padding: const EdgeInsets.only(
                      top: 15, right: 20, left: 20, bottom: 20),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 10,
                          // offset: Offset(4, 8), // Shadow position
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("assets/me.jpg"),
                                  radius: 50,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Abir Aloulou",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 35,
                                        color: themeProvider
                                            .themeData.colorScheme.secondary,
                                      ),
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!.comEng,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 20,
                                        color: themeProvider
                                            .themeData.colorScheme.secondary,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _getMaps(context, themeProvider);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15, bottom: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: CountryFlag.fromCountryCode(
                                    'TN',
                                    height: 20,
                                    width: 30,
                                    borderRadius: 5,
                                  ),
                                ),
                                Text(
                                  AppLocalizations.of(context)!.sfaxTn,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //2nd container
                Padding(
                  padding: const EdgeInsets.only(
                      top: 15, right: 20, left: 20, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Icon(
                                Ionicons.heart_circle,
                                color: primary.shade900,
                                size: 35,
                              ),
                            ),
                            Text(
                              AppLocalizations.of(context)!.aboutme,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                letterSpacing: 5,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
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
                          padding: const EdgeInsets.only(
                              top: 20, right: 20, left: 20, bottom: 20),
                          child: RichText(
                            text: TextSpan(
                              text: AppLocalizations.of(context)!.iam,
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                                color: themeProvider
                                    .themeData.colorScheme.secondary,
                                height: 1.5,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' Abir Aloulou ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: primary.shade900,
                                      fontSize: 30,
                                      height: 1.5),
                                ),
                                TextSpan(
                                    text: AppLocalizations.of(context)!
                                        .passionate),
                                TextSpan(
                                    text: AppLocalizations.of(context)!
                                        .compengstd,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        height: 1.5)),
                                TextSpan(
                                    text: AppLocalizations.of(context)!.des,
                                    style: TextStyle(height: 1.5)),
                                TextSpan(
                                    text: AppLocalizations.of(context)!.desc,
                                    style: TextStyle(height: 1.5)),
                                TextSpan(
                                    text:
                                        AppLocalizations.of(context)!.prodOwner,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        height: 1.5)),
                                TextSpan(
                                    text: AppLocalizations.of(context)!.ofAt),
                                TextSpan(
                                    text: 'Appy Toons',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: primary.shade900,
                                        fontSize: 30,
                                        height: 1.5)),
                                TextSpan(
                                    text: AppLocalizations.of(context)!.descr,
                                    style: TextStyle(height: 1.5)),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  void _getMaps(BuildContext context, ThemeProvider themeProvider) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MapsPage()));
  }
}
