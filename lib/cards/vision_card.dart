import 'package:flutter/material.dart';

class VisionCard extends StatelessWidget {
  final String? image;
  final VoidCallback? onClick;

  

  const VisionCard({super.key,this.image,this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        child: Column(
          children: [ Image(image: AssetImage(image!))],
        ),
      ),
    );
    ;
  }
}
