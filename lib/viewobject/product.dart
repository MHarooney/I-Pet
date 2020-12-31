import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Product {
  final String productId;
  final String productCategory;
  final String productTitle;
  final String productDescription;
  final Image productImage;
  final double price;
  bool isFavorite;

  Product({
    @required this.productId,
    this.productCategory,
    @required this.productTitle,
    @required this.productDescription,
    this.productImage,
    @required this.price,
    this.isFavorite = false,
  });
}
