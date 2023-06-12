import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    // Widget RegisterScreenWidget(
    //   VoidCallback ontap;
    // )
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Flexible(
                child: Text(
                  "सवारी चालक अनुमति पत्रको अनलाइन फारम भर्ने तरिका",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Text("१.यातायात व्यस्था विभागको वेबसाइट मा जानुहोला"),
              Text("२.वेब साइटको गृहपृष्टमा महत्वपूर्ण लिंकहरु चिनारी मुनि रहेको 'अनलाइन सवारी चालक अनुमतिपत्र प्रणाली 'लिंकमा क्लिक गर्नुहोस"),
              Text("३. DRIVING LICENSE ONLINE REGISTRATION मा क्लिक गर्नुहोस"),
              Text("१.CITIZENSHIP मा NEPAL छानुहोस "),
              Text("१.SELECT APPLY FOR मा आफुले चाहेको बुंदा छानेर  PROCEED मा क्लिक गर्नुहोस"),
              Text("१. आफ्नो व्यक्तिगत विवरण (DEMOGRAPHIC DETAILS) भर्नुहोस्"),



            ],
          )
        ],
      ),
    );
  }
}
