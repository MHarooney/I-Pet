import 'package:flutter/material.dart';

class ProductGridItem extends StatelessWidget {
  final id;
  final title;
  final Image image;

  ProductGridItem({
    this.id,
    this.title,
    this.image,
  });
  @override
  Widget build(BuildContext context) {
    return GridTile(
      // child: Image.asset(image),
      child: image,
    );
  }
}
