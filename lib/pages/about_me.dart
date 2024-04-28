import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../colors.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary.shade300,
      // backgroundColor: Color.fromRGBO(238, 239, 245, 1),
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
                    const Padding(
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
                                  ),
                                ),
                                Text(
                                  "Computer Engineer",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "& Artist",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
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
                          Text("Based in Sfax, Tunisia",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Colors.grey[600])),
                        ],
                      ),
                    ),
                    //google maps thing
                    // Padding(
                    //   padding: const EdgeInsets.only(bottom: 15),
                    //   child: Center(
                    //     child: Container(
                    //       color: Colors.amber,
                    //       width: 48.0,
                    //       height: 48.0,
                    //       child: ,
                    //     ),
                    //   ),
                    // )
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
                        const Text(
                          "ABOUT ME",
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
                          text: 'I\'m ',
                          style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            color: Colors.black,
                            height: 1.5,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Abir Aloulou',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: primary.shade900,
                                    fontSize: 30,
                                    height: 1.5)),
                            const TextSpan(text: ', a passionate '),
                            const TextSpan(
                                text: 'Computer Engineering student',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, height: 1.5)),
                            const TextSpan(
                                text:
                                    ' at the IIT, who is immersing herself in the realm of technology, innovation and creativity. \n\nCoding isn\'t just a skill for me; it\'s a form of expression, a way to bring conceptual ideas to life. I also enjoy creating web prototypes that combine artistry and functionality.',
                                style: TextStyle(height: 1.5)),
                            const TextSpan(
                                text:
                                    '\n\nAlongside my academic pursuits, I\'m ',
                                style: TextStyle(height: 1.5)),
                            const TextSpan(
                                text: 'the proud owner ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, height: 1.5)),
                            const TextSpan(text: 'of "'),
                            TextSpan(
                                text: 'Appy Toons',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: primary.shade900,
                                    fontSize: 30,
                                    height: 1.5)),
                            const TextSpan(
                                text:
                                    '" a venture where I blend my technical expertise with my love for art. Through vibrant illustrations and paintings, I aim to bring joy and humor into people\'s lives. \n\nAs an eternal learner, I enjoy discovering new skills and pushing the boundaries of what\'s possible. Join me on this journey of exploration and creation!',
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
  }
}
