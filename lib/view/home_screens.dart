import 'package:flutter/material.dart';
import 'package:notes_csit/cards/imp_doc_card.dart';
import 'package:notes_csit/cards/typecard.dart';
import 'package:notes_csit/cards/vision_card.dart';
import 'package:notes_csit/models/carousel.dart';
import 'package:notes_csit/models/data_typecard.dart';
import 'package:notes_csit/utils/routes/routes_name.dart';
import 'package:notes_csit/view/check_license/check_license.dart';
// import 'package:notes_csit/screens/check_license.dart';
import 'package:notes_csit/view/imp_doc_screens.dart';
import 'package:notes_csit/view/question/qna.dart';
import 'package:notes_csit/view/register.screen.dart';
import 'package:notes_csit/view/testExamscreens/home.dart';
import 'package:notes_csit/view/testExamscreens/quizscreen.dart';
import 'package:notes_csit/view/traffic_signal/traffic_home.dart';
import 'package:notes_csit/view/traffic_signal/traffic_symbol.dart';
import 'package:notes_csit/view/vision_screen.dart';
import 'package:notes_csit/view_model/auto_view_model.dart';
import 'package:provider/provider.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  @override
  Widget build(BuildContext context) {
    AutoViewModel autoViewModel = Provider.of<AutoViewModel>(context);
    Widget HomeWidget(
      final Color color,
      String title,
      String image,
      VoidCallback ontap,
    ) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          borderRadius: BorderRadius.circular(15),
          elevation: 10,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.28,
            width: MediaQuery.of(context).size.height * 0.21,
            decoration: BoxDecoration(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: ontap,
                  child: Material(
                    borderRadius: BorderRadius.circular(19),
                    elevation: 15,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.14,
                      width: MediaQuery.of(context).size.height * 0.19,
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(19),
                      ),
                      // color: Colors.blue,
                      child: Image.asset(
                        image,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Text(
                    title,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.indigo,
                ),
                child: Center(
                  child: Text(
                    'License Tayari App',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.home),
                    const Text('Home')
                    // Icon(Icons.arrow_forward_ios)
                  ],
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.person_2_outlined),
                    const Text('About This App'),
                  ],
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.polyline_sharp),
                    const Text('privacy Policy'),
                  ],
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.star),
                    const Text('Rate'),
                  ],
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.share),
                    const Text('share'),
                  ],
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.add),
                    const Text('More Apps'),
                  ],
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("NEPALI LICENSE TAYARI"),
          centerTitle: true,
          backgroundColor: Colors.purple,
          leading: Icon(Icons.menu),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Hello!!!",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Icon(
                    Icons.notifications,
                    size: 30,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text(
                      "Guest User",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CarouselDemo(),
              ),
              Divider(
                thickness: 2,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      HomeWidget(
                          Color.fromARGB(255, 236, 239, 233),
                          "Important Documents for license",
                          "images/pole.jpg", () {
                        Navigator.pushNamed(context, RoutesName.Impdoc);
                      }),
                      HomeWidget(
                          Color.fromARGB(255, 224, 228, 219),
                          "Important Traffic Symbols",
                          "images/trafficlight.png", () {
                        Navigator.pushNamed(context, RoutesName.trafficHome);
                      }),
                    ],
                  ),
                  Consumer<AutoViewModel>(builder: (_, v, __) {
                    return Row(
                      children: [
                        HomeWidget(Color.fromARGB(255, 227, 228, 226),
                            "Color Vision", "images/colorvision.png", () {
                          Navigator.pushNamed(context, RoutesName.vision);
                        }),
                        HomeWidget(
                            Color.fromARGB(255, 228, 230, 227),
                            "Test for the exam",
                            "images/giveexamm.jpg", () async {
                          // await v.requestApi();
                          // var data = await autoViewModel.licenseData.status;
                          // print(" The d ata is $data");
                          Navigator.pushNamed(context, RoutesName.quizz);

                          // Navigator.pushNamed(context, RoutesName.quizz,
                          //     arguments: {
                          //       'questions': v.userList.data!.questions
                          //     });
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => IqQuizHome()));
                        }),
                      ],
                    );
                  }),
                  Row(
                    children: [
                      HomeWidget(Color.fromARGB(255, 227, 228, 226),
                          "Check License ", "images/checklicense.jpeg", () {
                        Navigator.pushNamed(
                          context,
                          RoutesName.checkLicense,
                        );
                      }),
                      HomeWidget(Color.fromARGB(255, 228, 230, 227), "Register",
                          "images/registration.png", () {
                        Navigator.pushNamed(
                          context,
                          RoutesName.register,
                        );
                      }),
                    ],
                  ),
                  Row(
                    children: [
                      HomeWidget(Color.fromARGB(255, 227, 228, 226),
                          "Question Answers ", "images/checklicense.jpeg", () {
                        Navigator.pushNamed(
                          context,
                          RoutesName.qna,
                        );
                      }),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
// SingleChildScrollView(
//         child: Column(
//           // crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 HomeWidget(
//                     Color(0xff89c251), "ट्राफिक संकेत", "assets/traffic.png",
//                     () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => TrafficSignalHome()));
//                 }),
//                 HomeWidget(Color(0xfff64f2f), "प्रश्नोत्तर", "assets/hat.png",
//                     () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => QNAPage()));
//                 }),
//               ],
//             ),

//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 HomeWidget(
//                     Color(0xff00c2d5), "दृष्टि परीक्षण", "assets/eyetest.png",
//                     () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => VisionTest()));
//                 }),
//                 HomeWidget(
//                     Color(0xffdb4a81), "आवश्यक कागजात ", "assets/document.png",
//                     () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => QnaView(
//                                 data: data,
//                                 title: "आवश्यक कागजात ",
//                               )));
//                 }),
//               ],
//             ),

//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 HomeWidget(Color(0xff9b48bc), "नमुना प्रश्नपत्रहरु ",
//                     "assets/likhit.png", () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => Modelqsn()));
//                 }),
//                 HomeWidget(Color(0xff01bccb), "ट्रायल", "assets/trial.png", () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => TrialHome()));
//                 }),
//               ],
//             ),

//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 HomeWidget(
//                     Color(0xff4f87e6), "मह्त्तोपूर्ण जानकारी", "assets/qna.png",
//                     () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => JankariHome()));
//                 }),
//                 HomeWidget(Colors.indigoAccent, "कुइज़  टेस्ट", "images/9.jpg",
//                     () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => QuizHomePage()));
//                 }),
//               ],
//             ),
//             // HomeWidget(
//             //     Colors.teal, "License Utilities", "assets/qna.png", () {}),

//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 HomeWidget(Colors.deepOrange, "अनलाईन परिक्षा", "assets/ot.png",
//                     () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => WebViewScreen(
//                                 url: "https://www.nepallicense.com/online-exam",
//                               )));
//                 }),
//                 HomeWidget(Color(0xff1b2d5b), "नयाँ नियम", "images/8.jpg", () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => NewRuleHome()));
//                 }),
//               ],
//             ),
//           ],
//         ),