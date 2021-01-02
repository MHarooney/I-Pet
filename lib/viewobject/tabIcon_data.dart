import 'package:flutter/material.dart';

class TabIconData {
  TabIconData({
    this.imagePath,
    this.index = 0,
    this.selectedImagePath = '',
    this.isSelected = false,
    this.animationController,
  });

  String imagePath;
  String selectedImagePath;
  bool isSelected;
  int index;

  AnimationController animationController;

  static List<TabIconData> tabIconsList = <TabIconData>[
    TabIconData(
      imagePath: 'assets/images/ipet_paw_ic.png',
      selectedImagePath: 'assets/images/ipet_paw_ic_s.png',
      index: 0,
      isSelected: true,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/images/ipet_eye_ic.png',
      selectedImagePath: 'assets/images/ipet_eye_ic_s.png',
      index: 1,
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/images/ipet_bell_ic.png',
      selectedImagePath: 'assets/images/ipet_bell_ic_s.png',
      index: 2,
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/images/ipet_settings_ic.png',
      selectedImagePath: 'assets/images/ipet_settings_ic_s.png',
      index: 3,
      isSelected: false,
      animationController: null,
    ),
  ];
}
