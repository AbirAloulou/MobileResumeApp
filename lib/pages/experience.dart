import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../colors.dart';

import 'config/global.params.dart';

class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary.shade300,
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Icon(
                    Ionicons.footsteps,
                    color: primary.shade900,
                    size: 35,
                  ),
                ),
                const Text(
                  "EXPERIENCE",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    letterSpacing: 5,
                  ),
                ),
              ],
            ),
          ),
          ...(GlobalParams.experiences.reversed).map((item) {
            return Padding(
              padding: const EdgeInsets.only(
                  bottom: 20, top: 10, left: 10, right: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.white54,
                      blurRadius: 12,
                      offset: Offset(4, 8), // Shadow position
                    ),
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 7,
                      offset: Offset(4, 8), // Shadow position
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 20, top: 10, left: 10, right: 10),
                  child: Column(
                    children: [
                      //Company & date
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            ClipOval(
                              child: Image.asset(
                                '${item['company']['logo']}',
                                width: 100,
                                height: 100,
                              ),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Column(
                              children: [
                                Text(
                                  '${item['company']['name']}',
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '${item['period']}',
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Divider(height: 4, color: Colors.blueGrey),
                          //position
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '${item['title']}',
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          // project name
                          Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, bottom: 20),
                              child: Text(
                                '"${item['project']}"',
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ),
                          //tasks
                          for (var t in item['tasks']) ...[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, bottom: 20),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: Icon(
                                      Ionicons.checkmark_done_circle,
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                  Flexible(
                                    child: Text(
                                      '${t['task']}',
                                      style: const TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],

                          //tags
                          Wrap(
                            children: [
                              for (var tool in item['tools']) ...[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        const BoxShadow(
                                          color: Colors.white54,
                                          blurRadius: 12,
                                          offset: Offset(2, 4),
                                        ),
                                        BoxShadow(
                                          color: primary.shade900,
                                          blurRadius: 7,
                                          offset: const Offset(2, 4),
                                        ),
                                      ],
                                      color: primary.shade100,
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Icons.tag,
                                          color: primary.shade900,
                                        ),
                                        Text(
                                          '${tool['name']}',
                                          style: const TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                    width: 8), // Add spacing between rectangles
                              ],
                            ],
                          )
                        ],
                      ),
                      // Column(
                      //   children: [
                      //     const Divider(height: 4, color: Colors.blueGrey),
                      //     TextButton(
                      //       onPressed: () async {},
                      //       child: Text("View Report"),
                      //     )
                      //   ],
                      // )
                    ],
                  ),
                ),
              ),
            );
          }),
        ],
      )),
    );
  }
}
