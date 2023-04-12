import 'package:flutter/material.dart';
import 'package:notes_csit/datas/impdoc.dart';

class ImpCard extends StatelessWidget {
  final String? text;
  final VoidCallback? onClick;
  const ImpCard({super.key,this.text,this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.blueGrey,
      child: Text(text!),
    );
  }
}
