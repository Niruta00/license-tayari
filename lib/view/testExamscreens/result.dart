import 'package:flutter/material.dart';
class IqResult extends StatefulWidget {
  final int marks;
  final int? questioncount;

  IqResult({Key? key, required this.marks, this.questioncount});
  @override
  _IqResultState createState() => _IqResultState(marks);
}

class _IqResultState extends State<IqResult> {

  List<String> textes = [
    "Result pass",
    "Result is fail",
  ];

  late String message;
  late String text;

  @override
  void initState() {
    
    if (marks * 100 / widget.questioncount! < 40) {
      text = textes[1];
      message = "You Should Try Hard..\n" +
          "You Scored $marks out of ${widget.questioncount}";
    
    } else {
      text = textes[0];
      message = "You Did Very Well..\n" +
          "You Scored $marks out of ${widget.questioncount}";
    }
    super.initState();
  }

  int marks;
  _IqResultState(this.marks);

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        title: Text(
          "Result",
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Material(
              elevation: 10.0,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                      child: Container(
                        width: 300.0,
                        height: 300.0,
                        child: ClipRect(
                          child: Text(text)
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 5.0,
                          horizontal: 15.0,
                        ),
                        child: Center(
                          child: Text(
                            message,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: "Quando",
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                   
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  
                ),
                SizedBox(
                  width: 40,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }


}

// body: Consumer<AutoViewModel>(
          //   builder: (_, data, __) {
          //     // data.fetchLicenseData();
          //     print(data.licenseData.status);
          //     switch (data.licenseData.status) {
          //       case Status.LOADING:
          //         return Center(
          //           child: CircularProgressIndicator(),
          //         );

          //       case Status.ERROR:
          //         return Center(
          //           child: Text(data.licenseData.message.toString()),
          //         );

          //       case Status.COMPLETED:
          //         print(data.licenseData.data!.questions);
          //         AutoModels licenseData = data.licenseData.data!;
          //         return Column(
          //           children: List.generate(
          //               licenseData.questions!.length,
          //               (index) => Container(
          //                     child: Column(
          //                       children: [
          //                         Text(
          //                             "Question:  ${licenseData.questions![index].title} "),
          //                         Text(
          //                             "Option 1: ${licenseData.questions![index].options![0]} "),
          //                         Text(
          //                             "Option 2: ${licenseData.questions![index].options![1]} "),
          //                         Text(
          //                             "Option 3: ${licenseData.questions![index].options![2]} "),
          //                         Text(
          //                             "Option 4: ${licenseData.questions![index].options![3]} "),
          //                         Text(
          //                             "Correct Anser: ${licenseData.questions![index].correctOption}  "),
          //                       ],
          //                     ),
          //                   )),
          //         );

          //       default:
          //         return Text("Unknown error occured");
          //     }
          //   },
          // )
