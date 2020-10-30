import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SizeConfig {
  static const double _targetWidth = 414.0;
  static const double _targetHeight = 896.0;
  static const double _targetDpi = 2.0;

  static SizeConfig _shared;

  double width;
  double height;
  double _dpi;
  double _factor;
  double _factorDpi;

  static void init() {
    _shared = SizeConfig();

    final mediaQuery = MediaQuery.of(Get.context);
    _shared.width = mediaQuery.size.shortestSide;
    _shared.height = mediaQuery.size.longestSide;
    _shared._dpi = mediaQuery.devicePixelRatio;

    _shared._factor = _shared.width / _targetWidth;

    final diagonals = _shared.height / _shared.width;
    if (diagonals <= 1.5) {
      _shared._factor *= (_targetHeight / _shared.height);
    }

    _shared._factorDpi = _shared._dpi / _targetDpi;

    print("_shared.width ${_shared.width}");
    print("_shared.height ${_shared.height}");
    print("_shared._dpi ${_shared._dpi}");
    print("_shared._factor ${_shared._factor}");
  }

  static double scale(double source) {
    return source * _shared._factor;
  }

  static double _scale(double source) {
    return source * _shared._factorDpi;
  }
}
