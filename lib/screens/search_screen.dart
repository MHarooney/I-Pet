import 'package:flutter/material.dart';
import 'package:ipetfe/widgets/grid_item_card.dart';

import '../viewobject/product.dart';

class ProductsOverviewScreen extends StatelessWidget {
  final List<Product> loadedProduct = [
    Product(
      productId: 'p1',
      productTitle: 'Husky Dog',
      productDescription: 'eight month white husky dog',
      price: 4000,
      productImage: Image.asset('assets/images/card_4.png'),
    ),
    Product(
      productId: 'p1',
      productTitle: 'Husky Dog',
      productDescription: 'eight month white husky dog',
      price: 4000,
      productImage: Image.asset('assets/images/card_1.png'),
    ),
    Product(
      productId: 'p1',
      productTitle: 'Husky Dog',
      productDescription: 'eight month white husky dog',
      price: 4000,
      productImage: Image.asset('assets/images/card_2.png'),
    ),
    Product(
      productId: 'p1',
      productTitle: 'Husky Dog',
      productDescription: 'eight month white husky dog',
      price: 4000,
      productImage: Image.asset('assets/images/card_3.png'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView.builder(
        padding: const EdgeInsets.only(bottom: 40),
        itemCount: loadedProduct.length,
        itemBuilder: (ctx, i) => ProductGridItem(
          id: loadedProduct[i].productId,
          title: loadedProduct[i].productTitle,
          image: loadedProduct[i].productImage,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// import '../constants/theme.dart';
// import '../widgets/grid_item.dart';
//
// class SearchPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return SafeArea(
//         child: SingleChildScrollView(
//       child: Padding(
//         padding: const EdgeInsets.all(30.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             SizedBox(
//               height: 20,
//             ),
//             Align(
//                 alignment: Alignment.center,
//                 child: Text(
//                   "Find anything you need for your pets",
//                   textAlign: TextAlign.center,
//                   style: appSubTitle,
//                 )),
//             SizedBox(
//               height: 30,
//             ),
//             SearchItemItem(
//               itemOneTitle: "Vet \nClinics",
//               itemOneImg: "assets/images/card_1.png",
//               itemOneBgColor: card1,
//               itemOneTextColor: textWhite,
//               itemTwoTitle: "Places \nto eat",
//               itemTwoImg: "assets/images/card_2.png",
//               itemTwoBgColor: card2,
//               itemTwoTextColor: textBlack,
//             ),
//             SearchItemItem(
//               itemOneTitle: "Places \nto walk",
//               itemOneImg: "assets/images/card_3.png",
//               itemOneBgColor: card3,
//               itemOneTextColor: textWhite,
//               itemTwoTitle: "Spas \n& Salons",
//               itemTwoImg: "assets/images/card_4.png",
//               itemTwoBgColor: card4,
//               itemTwoTextColor: textBlack,
//             ),
//             SearchItemItem(
//               itemOneTitle: "Shops \n& Products",
//               itemOneImg: "assets/images/card_5.png",
//               itemOneBgColor: card5,
//               itemOneTextColor: textBlack,
//               itemTwoTitle: "Walk \ngroups ",
//               itemTwoImg: "assets/images/card_6.png",
//               itemTwoBgColor: card6,
//               itemTwoTextColor: textWhite,
//             ),
//             SearchItemItem(
//               itemOneTitle: "Animals \nin adoption",
//               itemOneImg: "assets/images/card_7.png",
//               itemOneBgColor: card7,
//               itemOneTextColor: textBlack,
//               itemTwoTitle: "Walk \ngroups ",
//               itemTwoImg: "assets/images/card_8.png",
//               itemTwoBgColor: card8,
//               itemTwoTextColor: textWhite,
//             ),
//           ],
//         ),
//       ),
//     ));
//   }
// }
