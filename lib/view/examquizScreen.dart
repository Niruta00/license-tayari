import 'package:flutter/material.dart';
import 'package:notes_csit/data/response/status.dart';
import 'package:notes_csit/models/testexammodel.dart';
import 'package:notes_csit/view_model/auto_view_model.dart';
import 'package:provider/provider.dart';

class QuizzScreens extends StatefulWidget {
  final AutoViewModel? licenseData;

  const QuizzScreens({super.key, this.licenseData});

  @override
  State<QuizzScreens> createState() => _QuizzScreensState();
}

class _QuizzScreensState extends State<QuizzScreens> {
  int score = 0;
  bool buttonPressed = false;
  // PageController? _controller;
  String buttonRightText = "Next Question";
  String buttonnLeftText = "Previous Question";

  bool answered = false;
  // bool  isCorrect=true;

  @override
  void initState() {
    super.initState();
    // _controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AutoViewModel QuizzScreensModel = Provider.of<AutoViewModel>(context);
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context);
        return Future.value(false);
      },
      child: Scaffold(
          appBar: AppBar(
            title: Text("License Data View"),
            backgroundColor: Colors.purple,
          ),
          floatingActionButton: FloatingActionButton(onPressed: () {
            QuizzScreensModel.requestApi();
          }),
          body: Consumer<AutoViewModel>(
            builder: (_, data, __) {
              // data.fetchLicenseData();
              print(data.licenseData.status);
              switch (data.licenseData.status) {
                case Status.LOADING:
                  return Center(
                    child: CircularProgressIndicator(),
                  );

                case Status.ERROR:
                  return Center(
                    child: Text(data.licenseData.message.toString()),
                  );

                case Status.COMPLETED:
                  print(data.licenseData.data!.questions);
                  AutoModels licenseData = data.licenseData.data!;

                  return Column(
                    children: [
                      Container(
                        height: 450,
                        child: PageView.builder(
                            itemCount: licenseData.questions!.length,
                            itemBuilder: (context, index) {
                              return Container(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 25, left: 5),
                                      child: Container(
                                        child: Center(
                                          child: Text(
                                            " ${licenseData.questions![index].title} ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Container(
                                        height: 35,
                                        width: 280,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(width: 0.3)),
                                        child: Center(
                                          child: Text(
                                              "Option 1: ${licenseData.questions![index].options![0]} "),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Container(
                                        height: 35,
                                        width: 280,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(width: 0.3)),
                                        child: Center(
                                          child: Text(
                                              "Option 2: ${licenseData.questions![index].options![1]} "),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Container(
                                        height: 35,
                                        width: 280,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(width: 0.3)),
                                        child: Center(
                                          child: Text(
                                              "Option 3: ${licenseData.questions![index].options![2]} "),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Container(
                                        height: 35,
                                        width: 280,
                                        decoration: BoxDecoration(
                                            border: Border.all(width: 0.3),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                          child: Text(
                                              "Option 4: ${licenseData.questions![index].options![3]} "),
                                        ),
                                      ),
                                    ),
                                    Text(
                                        "Correct Anser: ${licenseData.questions![index].correctOption}  "),
                                  ],
                                ),
                              );
                            }),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                              onPressed: () {}, child: Text(buttonnLeftText)),
                          ElevatedButton(
                              onPressed: () {}, child: Text(buttonRightText))
                        ],
                      )
                    ],
                  );

                default:
                  return Text("Unknown error occured");
              }
            },
          )),
    );
  }
}
