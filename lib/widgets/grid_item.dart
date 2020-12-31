import 'package:flutter/material.dart';

import '../viewobject/product.dart';

class SearchItemItem extends StatelessWidget {
  final String itemOneImg;
  final String itemOneTitle;
  final Color itemOneBgColor;
  final Color itemOneTextColor;
  final String itemTwoImg;
  final String itemTwoTitle;
  final Color itemTwoBgColor;
  final Color itemTwoTextColor;
  SearchItemItem({
    Key key,
    this.itemOneImg,
    this.itemOneTitle,
    this.itemOneBgColor,
    this.itemOneTextColor,
    this.itemTwoImg,
    this.itemTwoTitle,
    this.itemTwoBgColor,
    this.itemTwoTextColor,
  }) : super(key: key);

  final List<Product> loadedProduct = [
    Product(
      productId: 'p1',
      productTitle: 'Husky Dog',
      productDescription: 'eight month white husky dog',
      price: 4000,
    )
  ];

  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: const EdgeInsets.only(bottom: 40),
    //   child: Row(
    //     children: <Widget>[
    //       Flexible(
    //           child: Container(
    //         width: double.infinity,
    //         height: 140,
    //         child: Stack(
    //           children: <Widget>[
    //             Align(
    //               alignment: Alignment.bottomCenter,
    //               child: Container(
    //                 width: double.infinity,
    //                 height: 100,
    //                 decoration: BoxDecoration(
    //                     color: itemOneBgColor,
    //                     borderRadius: BorderRadius.circular(15)),
    //                 child: Align(
    //                   alignment: Alignment.centerLeft,
    //                   child: Padding(
    //                     padding: const EdgeInsets.only(left: 12),
    //                     child: Text(
    //                       itemOneTitle,
    //                       style: TextStyle(
    //                           fontSize: 13,
    //                           height: 1.5,
    //                           color: itemOneTextColor),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //             Positioned(
    //               right: -20,
    //               top: -10,
    //               child: Align(
    //                 alignment: Alignment.topRight,
    //                 child: Image.asset(itemOneImg),
    //               ),
    //             )
    //           ],
    //         ),
    //       )),
    //       SizedBox(
    //         width: 25,
    //       ),
    //       Flexible(
    //           child: Container(
    //         width: double.infinity,
    //         height: 140,
    //         child: Stack(
    //           children: <Widget>[
    //             Align(
    //               alignment: Alignment.bottomCenter,
    //               child: Container(
    //                 width: double.infinity,
    //                 height: 100,
    //                 decoration: BoxDecoration(
    //                     color: itemTwoBgColor,
    //                     borderRadius: BorderRadius.circular(15)),
    //                 child: Align(
    //                   alignment: Alignment.centerLeft,
    //                   child: Padding(
    //                     padding: const EdgeInsets.only(left: 12),
    //                     child: Text(
    //                       itemTwoTitle,
    //                       style: TextStyle(
    //                           fontSize: 13,
    //                           height: 1.5,
    //                           color: itemTwoTextColor),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //             Positioned(
    //               right: -20,
    //               top: -10,
    //               child: Align(
    //                 alignment: Alignment.topRight,
    //                 child: Image.asset(itemTwoImg),
    //               ),
    //             )
    //           ],
    //         ),
    //       )),
    //     ],
    //   ),
    // );
    return GridView.builder(
      padding: const EdgeInsets.only(bottom: 40),
      itemCount: loadedProduct.length,
      itemBuilder: (ctx, i) => Container(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
