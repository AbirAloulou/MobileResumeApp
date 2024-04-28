import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../colors.dart';

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
                            ),
                          ),
                          SizedBox(width: 20),
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
                            ),
                          ),
                          // Icon(
                          //   Ionicons.logo_whatsapp,
                          //   color: Colors.green,
                          // ),
                          // Text("+216 58 260 160")
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                "Email Me",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  letterSpacing: 3,
                ),
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: sender,
                          maxLines: null,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            hintText: "From",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(width: 1),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: subject,
                          maxLines: null,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.edit),
                            hintText: "Subject",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(width: 1),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: message,
                          maxLines: null,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.mail_rounded),
                            hintText: "Message",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(width: 1),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size.fromHeight(50),
                            backgroundColor: Colors.indigo[100],
                          ),
                          onPressed: () {
                            _sendEmail(context, sender.text, subject.text,
                                message.text);
                          },
                          child: Text(
                            "Send",
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future _sendEmail(BuildContext context, String sender, String subject,
      String message) async {
    final url = Uri.parse("");
    print(sender + subject + message);
  }
}
