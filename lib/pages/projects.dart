import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';
import 'package:resume_app/pages/config/global.params.dart';
import 'package:resume_app/theme_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';

import '../colors.dart';
import '../theme.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    final currentLocale = Localizations.localeOf(context);
    return Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
      return Scaffold(
        backgroundColor: themeProvider.themeData.colorScheme.background,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  AppLocalizations.of(context)!.showCase,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 35,
                    shadows: [
                      Shadow(
                        color: Colors.white,
                        offset: Offset(2, 4),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                ),
              ),
              ...(GlobalParams.projects).map((item) {
                return Card(
                  margin: EdgeInsets.all(10), // Add margin around the card
                  elevation: 5, // Add elevation for a shadow effect
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Card(
                          elevation: 5,
                          color:
                              Provider.of<ThemeProvider>(context).themeData ==
                                      lightMode
                                  ? Color(0xFFF3ADAD)
                                  : Color(0xFF615E5F),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                item['title'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  letterSpacing: 3,
                                ),
                              ),
                              IconButton(
                                icon: Icon(
                                  Ionicons.logo_github,
                                  // color: Colors.blue,
                                ),
                                onPressed: () async {
                                  Uri url = Uri.parse(
                                    item['github'],
                                  );

                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 200, // Adjust the height as needed
                          child: PageView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              for (var image in item['images'])
                                GestureDetector(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Dialog(
                                          child: Stack(
                                            children: [
                                              Container(
                                                color: Colors.white,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(10),
                                                  child: Image.asset(
                                                    image['image'],
                                                    width: 300,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                top: 10,
                                                right: 10,
                                                child: IconButton(
                                                  icon: Icon(
                                                    Icons.close,
                                                    color: primary.shade900,
                                                  ),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      image['image'],
                                      width: 200,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Description",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  letterSpacing: 2,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8, left: 8),
                              child: Text(
                                currentLocale.languageCode == 'en'
                                    ? item['descriptionEn']
                                    : item['descriptionFr'],
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                currentLocale.languageCode == 'en'
                                    ? "Tools"
                                    : "Technologies",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  letterSpacing: 2,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 8, left: 8),
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    for (var tool in item['tools'])
                                      CircleAvatar(
                                        backgroundImage:
                                            AssetImage(tool['image']),
                                        radius: 40,
                                      ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 8, left: 8, top: 8),
                              child: Row(
                                children: [
                                  Text(
                                    AppLocalizations.of(context)!.lastUpdt,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    item['update'],
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ],
          ),
        ),
      );
    });
  }
}
