import 'package:flutter/material.dart';

class TrafficSymbol extends StatelessWidget {
  final Map? arguements;
  // final List data;

  const TrafficSymbol({Key? key, this.arguements}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(arguements!['data']);
    List data = arguements!['data'];
    return Scaffold(
      // bottomNavigationBar: Container(
      //   height: MediaQuery.of(context).size.height * 0.08,
      //   color: Colors.indigo,
      // ),
      appBar: AppBar(
        title: Text("Traffic Symbols"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: data.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TrafficSymbolViewPage(
                              hero: data[index]['image'],
                              title: data[index]['title'],
                            )));
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                // height: 80,
                // width: 80,
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.1,
                child: Column(
                  children: [
                    Hero(
                      tag: data[index]['image'],
                      child: Container(
                        height: 98,
                        width: 98,
                        child: Image.asset(
                          data[index]['image'],
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Text(
                      data[index]['title'],
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}

class TrafficSymbolViewPage extends StatelessWidget {
  final String hero;
  final String title;

  const TrafficSymbolViewPage(
      {Key? key, required this.hero, required this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: hero,
              child: Container(
                height: 210,
                width: 200,
                child: Image.asset(
                  hero,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
