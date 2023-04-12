import 'package:flutter/material.dart';
import 'package:notes_csit/cards/imp_doc_card.dart';
import 'package:notes_csit/cards/typecard.dart';
import 'package:notes_csit/cards/vision_card.dart';
import 'package:notes_csit/datas/carousel.dart';
import 'package:notes_csit/datas/data_typecard.dart';
import 'package:notes_csit/screens/check_license/check_license.dart';
// import 'package:notes_csit/screens/check_license.dart';
import 'package:notes_csit/screens/imp_doc_screens.dart';
import 'package:notes_csit/screens/register.screen.dart';
import 'package:notes_csit/screens/test_exam.dart';
import 'package:notes_csit/screens/traffic_symbols_screen.dart';
import 'package:notes_csit/screens/vision_screen.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
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
        appBar: AppBar(
          title: Text("NEPALI LICENSE TAYARI"),
          centerTitle: true,
          backgroundColor: Colors.indigo,
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
                      HomeWidget(Color.fromARGB(255, 236, 239, 233),
                          "Important Documents for license", "images/pole.jpg",(){
                                               Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ImpDoc()));
                          }),
                      HomeWidget(
                          Color.fromARGB(255, 224, 228, 219),
                          "Important Traffic Symbols",
                          "images/trafficlight.png",(){
                                               Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>TrafficSymbols() ));
                          }),
                    ],
                  ),
                  Row(
                    children: [
                      HomeWidget(Color.fromARGB(255, 227, 228, 226),
                          "Color Vision", "images/colorvision.png",(){
                                               Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>VisionScreen() ));
                          }),
                      HomeWidget(Color.fromARGB(255, 228, 230, 227),
                          "Test for the exam", "images/giveexamm.jpg",(){
                                               Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TestExam()));
                          }),
                    ],
                  ),
                  Row(
                    children: [
                      HomeWidget(Color.fromARGB(255, 227, 228, 226),
                          "Check License ", "images/checklicense.jpeg",(){
                                               Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CheckLicense()));
                          }),
                      HomeWidget(Color.fromARGB(255, 228, 230, 227), "Register",
                          "images/registration.png",(){
                                               Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Register()));
                          }),
                    ],
                  ),
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