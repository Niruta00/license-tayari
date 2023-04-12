import 'package:flutter/material.dart';

class TypeCard extends StatelessWidget {
  final String? title;
  final String? image;
  final VoidCallback? onClick;

  const TypeCard({super.key, this.title, this.image, this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        child: Column(
          children: [Text(title!), Image(image: AssetImage(image!))],
        ),
      ),
    );
  }
}
