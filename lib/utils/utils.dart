import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

mixin Utils {
  static bool isLightMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light;
  }

  static String convertTimeStampToTime(int timeStamp) {
    if (timeStamp == null) {
      return '';
    }

    final DateTime dateTime2 =
        DateTime.fromMillisecondsSinceEpoch(timeStamp, isUtc: true);
    final DateTime dateTime = dateTime2.toLocal();
    final DateFormat format = DateFormat.jm(); //"6:00 AM"
    return format.format(dateTime);
  }

  static String getTimeString() {
    final DateTime dateTime = DateTime.now();
    final DateFormat format = DateFormat.Hms();
    return format.format(dateTime);
  }

  static String convertColorToString(Color color) {
    String convertedColorString = '';

    String colorString = color.toString().toUpperCase();

    colorString = colorString.replaceAll(')', '');

    convertedColorString = colorString.substring(colorString.length - 6);

    return '#' + convertedColorString;
  }

  static Future<bool> checkInternetConnectivity() async {
    final ConnectivityResult connectivityResult =
        await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.mobile) {
      // print('Mobile');
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      // print('Wifi');
      return true;
    } else if (connectivityResult == ConnectivityResult.none) {
      print('No Connection');
      return false;
    } else {
      return false;
    }
  }
}
