import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CheckResults extends StatelessWidget {
  const CheckResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Container(
          height: 200,
          color: Colors.pink,
          child: Column(
            children: [
              Flexible(
                child: Text(
                  "मोबाइल को मेसेज बक्समा गएर  'WT <space> [Application ID]' लेखि 33001 मा पठाउनुहोस्।",
                  style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              InkWell(
                    onTap: () {
                      launchUrl(Uri.parse(
                          "dlo.gandaki.gov.np/results/"), mode: LaunchMode.externalApplication);
                    },
                    child: Text("अथवा यो LINK थिच्नुहोस्"))
          
            ],
          ),
        ),
      ),
    );
  }
}
