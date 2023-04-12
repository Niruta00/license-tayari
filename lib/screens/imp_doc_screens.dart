import 'package:flutter/material.dart';
import 'package:notes_csit/datas/impdoc.dart';

class ImpDoc extends StatelessWidget {
  const ImpDoc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: impDoc.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 251, 249, 252),
                      borderRadius: BorderRadius.circular(2)),
                  child: ListTile(
                    title: Text(impDoc[index]['text']),
                  ),
                ),
              );
            }));
  }
}
