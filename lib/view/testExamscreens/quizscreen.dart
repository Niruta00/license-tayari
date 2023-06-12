import 'package:flutter/material.dart';
import 'package:notes_csit/view/testExamscreens/result.dart';


class QuizzScreen extends StatefulWidget {
  // yo page ma question nai xaian aba dekhauna laii
  // hajur ley agillo screen batw iqData bhanni ma sabb pathauna paryo
  // ailey ko ma chaii toipic mara xa so teii vayerw yo error aayo

  final List? iqdata ;

  const QuizzScreen({Key? key, this.iqdata}) : super(key: key);

  @override
  _QuizzScreenState createState() => _QuizzScreenState();
}

class _QuizzScreenState extends State<QuizzScreen> {
  int score = 0;
  bool btnPressed = false;
  PageController? _controller;
  String btnText = "Next Question";
  bool answered = false;
 
  @override
  void initState() {
    super.initState();
   
    _controller = PageController(initialPage: 0);
  }

 

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context);
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: PageView.builder(
              controller: _controller,
              onPageChanged: (page) {
                if (page == widget.iqdata!.length - 1) {
                  setState(() {
                    btnText = "Check Results";
                  });
                }
                setState(() {
                  answered = false;
                });
              },
              physics: new NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.09,
                      child: Text(
                        "${widget.iqdata![index].question}",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(15),
                    //         border: Border.all(
                    //             color: Colors.black,
                    //             style: BorderStyle.solid,
                    //             width: 2.0)),
                    //     height: MediaQuery.of(context).size.height * 0.28,
                    //     width: double.infinity,
                    //     child: InkWell(
                    //       onTap: () {
                           
                    //         Navigator.push(
                    //             context,
                    //             MaterialPageRoute(
                    //                 builder: (context) => ImageView(
                    //                     "${widget.iqdata![index].img}",
                    //                     "${widget.iqdata![index].img}")));
                    //       },
                    //       child: Hero(
                    //         tag: "${widget.iqdata![index].img}",
                    //         child: FadeInImage.assetNetwork(
                    //           image: "${widget.iqdata![index].img}",
                    //           placeholder: "images/loading.gif",
                    //           // fit: BoxFit.fitWidth,
                    //           // image: NetworkImage("${widget.iqdata[index].img}")
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    for (int i = 0;
                        i < widget.iqdata![index].answers.length;
                        i++)
                      Container(
                        width: double.infinity,
                        height: 49.0,
                        margin: EdgeInsets.only(
                            bottom: 20.0, left: 12.0, right: 12.0),
                        child: RawMaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          fillColor: btnPressed
                              ? widget.iqdata![index].answers.values.toList()[i]
                                  ? Colors.green
                                  : Colors.red
                              : Colors.teal,
                          onPressed: !answered
                              ? () {
                                  if (widget.iqdata![index].answers.values
                                      .toList()[i]) {
                                    score++;
                                  } else {}
                                  setState(() {
                                    btnPressed = true;
                                    answered = true;
                                  });
                                }
                              : null,
                          child: Text(
                              widget.iqdata![index].answers.keys.toList()[i],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              )),
                        ),
                      ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MaterialButton(
                          onPressed: () async {
                            // interstitialAd.show();
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Quit",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.teal,
                          shape: StadiumBorder(),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.15,
                        ),
                        RawMaterialButton(
                          onPressed: () {
                           
                            if (_controller!.page?.toInt() ==
                                widget.iqdata!.length - 1) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => IqResult(
                                            marks: score,
                                            questioncount:
                                                widget.iqdata!.length,
                                          )));
                            } else {
                              _controller!.nextPage(
                                  duration: Duration(milliseconds: 25),
                                  curve: Curves.easeInExpo);

                              setState(() {
                                btnPressed = false;
                              });
                            }
                          },
                          shape: StadiumBorder(),
                          fillColor: Colors.teal,
                          padding: EdgeInsets.only(left: 18.0, right: 18.0),
                          elevation: 0.0,
                          child: Text(
                            btnText,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    )
                  ],
                );
              },
              itemCount: widget.iqdata!.length
            )),
      ),
    );
  }
}
