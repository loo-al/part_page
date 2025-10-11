/*
size.dart
helper for dynamic sizing
*/
import 'package:flutter/material.dart';

class Size {
  static late double screenWidth;
  static late double screenHeight;

  static void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
  }

  double getScreenHeight() {
    return screenHeight;
  }
  double getScreenWidth() {
    return screenWidth;
  }

  // 60% of screen width
  double adjustedWidth = screenWidth * 0.60;
  double appBarPad = screenWidth / 6.5;

  double h50 = screenHeight * 0.005;
  double oneh = screenHeight * 0.01;
  double twoh = screenHeight * 0.02;
  double threeh = screenHeight * 0.03;
  double fourh = screenHeight * 0.04;
  double fiveh = screenHeight * 0.05;
  double tenh = screenHeight * 0.10;
  double twentyh = screenHeight * 0.20;

  double w25 = screenWidth * 0.0025;
  double w50 = screenWidth * 0.005;
  double onew = screenWidth * 0.01;
  double twow = screenWidth * 0.02;
  double threew = screenWidth * 0.03;
  double fivew = screenWidth * 0.05;
  double tenw = screenWidth * 0.10;
  double twentyw = screenWidth * 0.20;
  double thirtyw = screenWidth * 0.30;
  double fiftyw = screenWidth * 0.50;
}