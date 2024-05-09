import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume_app/theme_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String image;

  @override
  void initState() {
    super.initState();
    image = "assets/code.png";
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return Scaffold(
          backgroundColor: themeProvider.themeData.colorScheme.background,
          body: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Text(
                  AppLocalizations.of(context)!.helloIam,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 35,
                  ),
                ),
              ),
              Text(
                this.image == "assets/code.png" ? "Abir Aloulou" : "Appy",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 35,
                ),
              ),
              Center(
                child: Text(
                  this.image == "assets/code.png"
                      ? AppLocalizations.of(context)!.aComputerEngineer
                      : AppLocalizations.of(context)!.yourFavArtist,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 35,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        image = image == "assets/code.png"
                            ? "assets/art.png"
                            : "assets/code.png";
                      });
                    },
                    child: Image(
                      image: AssetImage(image),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
// class _HomePageState extends State<HomePage> {
//   late String image;

//   @override
//   void initState() {
//     super.initState();
//     image = "assets/code.png";
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Consumer<ThemeProvider>(
//       builder: (context, themeProvider, child) {
//         return Scaffold(
//           backgroundColor: themeProvider.themeData.colorScheme.background,
//           body: Column(
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 100),
//                 child: Text(
//                   "Hello, I am",
//                   style: TextStyle(
//                     fontWeight: FontWeight.w400,
//                     fontSize: 35,
//                   ),
//                 ),
//               ),
//               Text(
//                 this.image == "assets/code.png" ? "Abir Aloulou" : "Appy",
//                 style: TextStyle(
//                   fontWeight: FontWeight.w700,
//                   fontSize: 35,
//                 ),
//               ),
//               Text(
//                 this.image == "assets/code.png"
//                     ? "a Computer Engineer"
//                     : "your favorite Artist",
//                 style: TextStyle(
//                   fontWeight: FontWeight.w600,
//                   fontSize: 35,
//                   fontStyle: FontStyle.italic,
//                 ),
//               ),
//               Expanded(
//                 child: Align(
//                   alignment: FractionalOffset.bottomCenter,
//                   child: GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         image = image == "assets/code.png"
//                             ? "assets/art.png"
//                             : "assets/code.png";
//                       });
//                     },
//                     child: Image(
//                       image: AssetImage(image),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }



// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     String image = "assets/code.png";
//     return Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
//       return Scaffold(
//         backgroundColor: Provider.of<ThemeProvider>(context)
//             .themeData
//             .colorScheme
//             .background,
//         body: Column(
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             const Padding(
//               padding: EdgeInsets.only(top: 100),
//               child: Text(
//                 "Hello, I am",
//                 style: TextStyle(
//                   fontWeight: FontWeight.w400,
//                   fontSize: 35,
//                 ),
//               ),
//             ),
//             const Text(
//               "Abir Aloulou",
//               style: TextStyle(
//                 fontWeight: FontWeight.w700,
//                 fontSize: 35,
//               ),
//             ),
//             const Text(
//               " a Computer Engineer",
//               style: TextStyle(
//                 fontWeight: FontWeight.w600,
//                 fontSize: 35,
//                 fontStyle: FontStyle.italic,
//                 // color: Colors.redAccent,
//               ),
//             ),
//             Expanded(
//               child: Align(
//                 alignment: FractionalOffset.bottomCenter,
//                 // child: Image(
//                 //   image: AssetImage("assets/code.png"),
//                 // ),
//                 // child: RiveAnimation.asset("design_code.riv"),
//                 child: Image(
//                   image: AssetImage(image),
//                 ),
//                 // child: GestureDetector(

//                 //   onTap: () {
//                 //     setState(() {
//                 //       _image == "assets/code.png"
//                 //           ? _image = "assets/art.png"
//                 //           : _image = "assets/code.png";
//                 //     });
//                 //   },
//                 // ),
//               ),
//             ),
//           ],
//         ),
//       );
//     });
//   }
// }
