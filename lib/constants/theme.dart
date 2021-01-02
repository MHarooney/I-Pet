import 'package:flutter/material.dart';

const appBackground = Color(0xFFEFF5F4);
const primary = Color(0xFF00B7B7);
const white = Color(0xFFFFFFFF);
const textWhite = Color(0xFFFFFFFF);
const textBlack = Color(0xFF000000);

// card color
const card1 = Color(0xFF15464E);
const card2 = Color(0xFFC9E193);
const card3 = Color(0xFF00B7B7);
const card4 = Color(0xFFB6DDDF);
const card5 = Color(0xFFC9E193);
const card6 = Color(0xFF15464E);
const card7 = Color(0xFFB6DDDF);
const card8 = Color(0xFF00B7B7);
const card9 = Color(0xFF0FB7B7);
const Color background = Color(0xFFF2F3F8);

const String montserrat = "Montserrat";

const appTitle =
    TextStyle(fontSize: 35, fontWeight: FontWeight.bold, height: 1.5);
const appSubTitle =
    TextStyle(fontSize: 30, fontWeight: FontWeight.bold, height: 1.5);
const contentWhite = TextStyle(fontSize: 15, height: 1.5, color: textWhite);
const contentBlack = TextStyle(fontSize: 15, height: 1.5, color: textBlack);

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
