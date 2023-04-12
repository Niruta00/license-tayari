

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class CheckTax extends StatelessWidget {
  const CheckTax({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
        color: Colors.green,
        child: Column(
          children: [
            Flexible(
                  child: Text(
                    "मोबाइल को मेसेज बक्समा गएर  'VTAX[your vehicle number]' लेखि 4321 मा पठाउनुहोस्।",
                    style:
                        TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                InkWell(
                    onTap: () {
                      launchUrl(Uri.parse(
                          "www.dotm.gov.np/MainData/TaxRateCircularDirection"));
                    },
                    child: Text("अथवा यो LINK थिच्नुहोस्"))
          ],
        ),
      ),
    );
  }
}