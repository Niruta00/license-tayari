import 'package:flutter/material.dart';
import 'package:notes_csit/screens/check_license/check_results.dart';
import 'package:notes_csit/screens/check_license/check_tax.dart';
import 'package:notes_csit/screens/check_license/license_print_checking.dart';

class CheckLicense extends StatefulWidget {
  const CheckLicense({super.key});

  @override
  State<CheckLicense> createState() => _CheckLicenseState();
}

class _CheckLicenseState extends State<CheckLicense> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CheckPrint(),
                      ));
                },
                // onTap: Navigator.push(context, MaterialPageRoute(builder: (context) => ,)),
                child: Container(
                  height: 150,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "images/licenseprint.jpg",
                        fit: BoxFit.contain,
                      ),
                      Flexible(
                          child: Text(
                        "लाईसेन्स प्रिन्ट भए नभएको जानकारीको लागि",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ))
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CheckResults(),
                      ));
                },
                child: Container(
                  height: 150,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "images/results_exam.jpg",
                        fit: BoxFit.contain,
                      ),
                      Flexible(
                          child: Text(
                        "लिखित परीक्षाको नतिजा थाहा पाउनको लागि",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ))
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CheckTax(),
                      ));
                },
                child: Container(
                  height: 150,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "images/taxx.jpg",
                        fit: BoxFit.contain,
                      ),
                      Flexible(
                          child: Text(
                        "आफ्नो साधनको करबारे थाहा पाउनको लागि",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
