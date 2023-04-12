import 'package:flutter/material.dart';
import 'package:notes_csit/datas/vision_data.dart';

class VisionScreen extends StatelessWidget {
  const VisionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView.builder(
              itemCount: visionData.length,
              itemBuilder: (context, index) {
                return Container(
                    height: MediaQuery.of(context).size.height * 0.28,
                    width: MediaQuery.of(context).size.height * 0.21,
                    decoration: BoxDecoration(),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                              child: Material(
                                  borderRadius: BorderRadius.circular(19),
                                  elevation: 15,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                    width: MediaQuery.of(context).size.height *
                                        0.50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(19),
                                      // color: Colors.blue,
                                    ),
                                    // color: Colors.blue,
                                    child: ListTile(
                                      title: Image(
                                        image: AssetImage(
                                            visionData[index]['image']),
                                      ),
                                    ),
                                  ))),
                          Padding(
                            padding: const EdgeInsets.all(18),
                            child: Text(
                              visionData[index]['text'],
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          )
                        ]));
               
              })),
    );
  }
}
