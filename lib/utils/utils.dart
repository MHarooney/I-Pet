import 'package:flutter/material.dart';

mixin Utils {
  static bool isLightMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light;
  }
}
