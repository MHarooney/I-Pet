import 'package:flutter/material.dart';

class ProductGridItem extends StatelessWidget {
  final id;
  final title;
  final String image;

  ProductGridItem({
    this.id,
    this.title,
    this.image,
  });
  @override
  Widget build(BuildContext context) {
    return GridTile(
      // child: Image.asset(image),
      child: Text(
        'image',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
