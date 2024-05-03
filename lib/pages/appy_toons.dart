import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';
import 'package:resume_app/theme_provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../colors.dart';
import 'config/global.params.dart';

class AppyToons extends StatefulWidget {
  const AppyToons({super.key});

  @override
  State<AppyToons> createState() => _AppyToonsState();
}

class _AppyToonsState extends State<AppyToons> {
  // final double coverHeight = 100;
  // final double profileHeight = 144;
  String image = "assets/art.png";
  @override
  Widget build(BuildContext context) {
    // final top = coverHeight - profileHeight / 2;
    return Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
      return Scaffold(
          backgroundColor: themeProvider.themeData.colorScheme.background,
          body: PageView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                //screen 1
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 100),
                      child: Text(
                        "Hello, I am",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 35,
                        ),
                      ),
                    ),
                    const Text(
                      "Appy",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 35,
                      ),
                    ),
                    Text(
                      "The Founder & The Artist",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "Of Appy Toons",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "swipe right for more >>",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Colors.grey[600]),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: FractionalOffset.bottomCenter,
                        child: Image(
                          image: AssetImage(image),
                        ),
                      ),
                    ),
                  ],
                ),
                //screen 2
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 15, right: 20, left: 20, bottom: 20),
                      child: Container(
                        height: 250,
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
                                      backgroundImage:
                                          AssetImage("assets/appytoons.png"),
                                      radius: 50,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Appy Toons",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 35,
                                            color: themeProvider.themeData
                                                .colorScheme.secondary,
                                          ),
                                        ),
                                        Text(
                                          "One-of-a-kind artistic products",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 13,
                                            color: themeProvider.themeData
                                                .colorScheme.secondary,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15, bottom: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Icon(
                                  //   Icons.tag,
                                  //   color: primary.shade900,
                                  // ),
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
                                    "Made in Tunisia",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        color: Colors.grey[600]),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: themeProvider
                                      .themeData.colorScheme.background,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                onPressed: () async {
                                  Uri url = Uri.parse(
                                      "https://www.instagram.com/appy.toons/");

                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Icon(
                                        Ionicons.logo_instagram,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "appy.toons",
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
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
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 20, left: 20, bottom: 20),
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
                                const Text(
                                  "Description",
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
                                  text: 'So,',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20,
                                    color: themeProvider
                                        .themeData.colorScheme.secondary,
                                    height: 1.5,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Appy Toons',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: primary.shade900,
                                            fontSize: 30,
                                            height: 1.5)),
                                    const TextSpan(
                                        text:
                                            ' is a small business that specializes in creating unique and creative digital art, paintings, stickers, and prints. Their passion for art and design shines through in every piece they create, making their products perfect for anyone looking to add some personality and flair to their home, office, or personal belongings.'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 20,
                        left: 20,
                      ),
                      child: Text(
                        "Swipe right for more >>",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Colors.grey[600]),
                      ),
                    )
                  ],
                ),
                //screen 3
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "M U S E U M",
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
                      ...(GlobalParams.museum_art).map((item) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                bottom: 15,
                              ),
                              child: Text(
                                item['title'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  letterSpacing: 3,
                                ),
                              ),
                            ),
                            Container(
                              height: 200,
                              color: Colors.white,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
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
                                                          const EdgeInsets.all(
                                                              10),
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
                                                        Navigator.of(context)
                                                            .pop();
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
                            )
                          ],
                        );
                      })
                    ],
                  ),
                )
              ]));
    });
  }
}
