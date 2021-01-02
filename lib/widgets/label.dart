import 'package:mybmi/constants.dart';
import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  const Label({
    Key key,
    this.text,
    this.textColor,
    this.size = 14,
    this.fontWeight = FontWeight.w500,
    this.textAlign = TextAlign.left,
    this.fontFamily = montserrat,
    this.maxLines,
    this.overflow,
    this.height,
    this.myFontSize,
    this.myTxtStyle,
  }) : super(key: key);

  final String text;
  final Color textColor;
  final num size;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final String fontFamily;
  final int maxLines;
  final TextOverflow overflow;
  final double height;
  final double myFontSize;
  final TextStyle myTxtStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      // style: TextStyle(
      //   fontFamily: fontFamily,
      //   fontWeight: fontWeight,
      //   height: height,
      //   color: textColor ?? Colors.white,
      //   fontSize: myFontSize,
      // ),
      style: myTxtStyle,
      textAlign: textAlign,
      textScaleFactor: 1,
    );
  }
}
