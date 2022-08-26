import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;
  static double? _safeAreaHorizontal;
  static double? _safeAreaVertical;
  static double? safeBlockHorizontal;
  static double? safeBlockVertical;
  static double? textScale;
  static SizedBox? sizedBox;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    if (_mediaQueryData != null) {
      screenWidth = _mediaQueryData!.size.width;
      screenHeight = _mediaQueryData!.size.height;
      blockSizeHorizontal = screenWidth! / 100;
      blockSizeVertical = screenHeight! / 100;
      _safeAreaHorizontal =
          _mediaQueryData!.padding.left + _mediaQueryData!.padding.right;
      _safeAreaVertical =
          _mediaQueryData!.padding.top + _mediaQueryData!.padding.bottom;
      safeBlockHorizontal = (screenWidth! - _safeAreaHorizontal!) / 100;
      safeBlockVertical = (screenHeight! - _safeAreaVertical!) / 100;
      sizedBox = SizedBox(
          width: safeBlockHorizontal! * 10, height: safeBlockVertical! * 10);
      if (safeBlockVertical! * 100 > 650) {
        textScale = 25;
      }

      if (safeBlockVertical! * 100 < 650 && safeBlockVertical! * 100 > 400) {
        textScale = 18;
      } else {
        textScale = 18;
      }
    }
  }
}
