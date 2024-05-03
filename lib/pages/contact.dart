import 'package:animated_emoji/animated_emoji.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';
import 'package:resume_app/theme_provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  TextEditingController sender = new TextEditingController();
  TextEditingController subject = new TextEditingController();
  TextEditingController message = new TextEditingController();

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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10, left: 10),
                      child: AnimatedEmoji(
                        AnimatedEmojis.loveLetter,
                        size: 50,
                      ),
                    ),
                    const Text(
                      "CONTACT ME",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        letterSpacing: 5,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Social Media",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  letterSpacing: 3,
                ),
              ),
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
                        offset: Offset(4, 8), // Shadow position
                      ),
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 7,
                        offset: Offset(4, 8), // Shadow position
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                themeProvider.themeData.colorScheme.background,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () async {
                            Uri url = Uri.parse(
                                "https://www.facebook.com/profile.php?id=100010894248826");

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
                                  Ionicons.logo_facebook,
                                  color: Colors.blue.shade900,
                                ),
                              ),
                              Text(
                                "Abir Aloulou",
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                themeProvider.themeData.colorScheme.background,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () async {
                            Uri url = Uri.parse(
                                "https://www.linkedin.com/in/abir-aloulou-89949b1b1/");

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
                                  Ionicons.logo_linkedin,
                                  color: Colors.blue.shade700,
                                ),
                              ),
                              Text(
                                "Abir Aloulou",
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                themeProvider.themeData.colorScheme.background,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () async {
                            String phoneNumber = "+21658260160";
                            String url = 'tel:$phoneNumber';

                            if (await canLaunchUrl(Uri.parse(url))) {
                              await launchUrl(Uri.parse(url));
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
                                  Ionicons.logo_whatsapp,
                                  color: Colors.green,
                                ),
                              ),
                              Text(
                                "+216 58 260 160",
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
              // Padding(
              //   padding: const EdgeInsets.only(top: 8),
              //   child: Text(
              //     "Email Me",
              //     style: TextStyle(
              //       fontWeight: FontWeight.w700,
              //       fontSize: 20,
              //       letterSpacing: 3,
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(15),
              //   child: Container(
              //     decoration: BoxDecoration(
              //       color: Colors.white,
              //       borderRadius: BorderRadius.circular(15.0),
              //       boxShadow: const [
              //         BoxShadow(
              //           color: Colors.white54,
              //           blurRadius: 12,
              //           offset: Offset(4, 8), // Shadow position
              //         ),
              //         BoxShadow(
              //           color: Colors.black38,
              //           blurRadius: 7,
              //           offset: Offset(4, 8), // Shadow position
              //         ),
              //       ],
              //     ),
              //     child: Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Column(
              //         children: [
              //           Padding(
              //             padding: const EdgeInsets.all(8.0),
              //             child: TextFormField(
              //               controller: sender,
              //               maxLines: null,
              //               decoration: InputDecoration(
              //                 prefixIcon: Icon(Icons.person),
              //                 hintText: "From",
              //                 border: OutlineInputBorder(
              //                   borderRadius: BorderRadius.circular(15),
              //                   borderSide: BorderSide(width: 1),
              //                 ),
              //               ),
              //             ),
              //           ),
              //           Padding(
              //             padding: const EdgeInsets.all(8.0),
              //             child: TextFormField(
              //               controller: subject,
              //               maxLines: null,
              //               decoration: InputDecoration(
              //                 prefixIcon: Icon(Icons.edit),
              //                 hintText: "Subject",
              //                 border: OutlineInputBorder(
              //                   borderRadius: BorderRadius.circular(15),
              //                   borderSide: BorderSide(width: 1),
              //                 ),
              //               ),
              //             ),
              //           ),
              //           Padding(
              //             padding: const EdgeInsets.all(8.0),
              //             child: TextFormField(
              //               controller: message,
              //               maxLines: null,
              //               decoration: InputDecoration(
              //                 iconColor:
              //                     themeProvider.themeData.colorScheme.secondary,
              //                 prefixIcon: Icon(Icons.mail_rounded),
              //                 hintText: "Message",
              //                 border: OutlineInputBorder(
              //                   borderRadius: BorderRadius.circular(15),
              //                   borderSide: BorderSide(width: 1),
              //                 ),
              //               ),
              //             ),
              //           ),
              //           Padding(
              //             padding: const EdgeInsets.all(8.0),
              //             child: ElevatedButton(
              //               style: ElevatedButton.styleFrom(
              //                 minimumSize: Size.fromHeight(50),
              //                 backgroundColor: Colors.indigo[100],
              //               ),
              //               onPressed: () {
              //                 _sendEmail();
              //               },
              //               child: Text(
              //                 "Send",
              //                 style:
              //                     TextStyle(fontSize: 22, color: Colors.white),
              //               ),
              //             ),
              //           )
              //         ],
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      );
    });
  }

  Future _sendEmail() async {
    String s = sender.text;
    String m = message.text;
    String sub = subject.text;
    final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
    const serviceId = "service_rpw0urb";
    const templateId = "template_467ly1m";
    const userId = "nsYNvTNafunXEPbA8";
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        "service_id": serviceId,
        "template_id": templateId,
        "user_id": userId,
        "template_params": {
          "from_name": s,
          "to_name": "Abir Aloulou",
          "subject": sub,
          "message": m
        }
      }),
    );
    sender.text = "";
    message.text = "";
    subject.text = "";

    return response.statusCode;
  }
}
