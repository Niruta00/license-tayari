import 'package:flutter/material.dart';
import 'package:notes_csit/view/testExamscreens/quizscreen.dart';

List iqdata  = [
  [
    "Analytical Reasoning",
    "Cubes and Dices",
    "Grouping Images",
  ],
  // [
  //   analyticalreasoning,
  //   cubesanddices,
  //   cubesanddices,
  // ],
];

class IqQuizHome extends StatefulWidget {
  @override
  State<IqQuizHome> createState() => _IqQuizHomeState();
}

class _IqQuizHomeState extends State<IqQuizHome> {
  @override
  void initState() {
    //

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IQ Quiz(Online)"),
      ),
      body: ListView.builder(
          itemCount: iqdata.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  onTap: () {
                    //
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => QuizzScreen(
                    //               iqdata: iqdata[0],
                    //             )));
                  },
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Colors.indigo,
                  ),
                  title: Text(
                    iqdata[index][0],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(
                  color: Colors.black,
                  height: 2.0,
                )
              ],
            );
          }),
    )
        // .withBottomAd()
        ;
  }
}
