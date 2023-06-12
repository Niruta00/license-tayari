import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LicensePrintScreen extends StatelessWidget {


  const LicensePrintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Scaffold(
          body: Container(
            height: 300,
            color: Colors.indigo,
            child: Column(
              children: [
                Flexible(
                  child: Text(
                    "मोबाइल को मेसेज बक्समा गएर  'LC <space> [Application ID]' लेखि 33001 अथवा 33003 मा पठाउनुहोस्।",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                InkWell(
                    onTap: () {
                      launchUrl(Uri.parse(
                          "www.dotm.gov.np/DrivingLicense/SearchLicense"));
                    },
                    child: Text("अथवा यो LINK थिच्नुहोस्"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
