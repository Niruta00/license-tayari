import 'package:flutter/material.dart';
import 'package:notes_csit/cards/qnaview.dart';
import 'package:notes_csit/models/qnadata.dart';

class QNAScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("प्रश्नोत्तर"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: qnadata.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => QnaView(
                              data: qnadata[index]['data'],
                              title: qnadata[index]['title'],
                            )));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 27, 139, 138),
                    border: Border.all(
                      // color: Colors.black,
                      style: BorderStyle.solid,
                      // width: 2
                    ),
                    borderRadius: BorderRadius.circular(20)),
                child: ListTile(
                  // selectedTileColor: Colors.indigo,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QnaView(
                                  data: qnadata[index]['data'],
                                  title: qnadata[index]['title'],
                                )));
                  },
                  trailing: Icon(Icons.chevron_right),
                  title: Text(
                    qnadata[index]['title'],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("२० प्रश्न उत्तर"),
                  leading: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 173, 201, 173),
                    child: Text('${index + 1}'),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
