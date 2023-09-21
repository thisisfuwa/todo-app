import 'dart:math';

import 'package:flutter/material.dart';

extension MediaQueryExtension on BuildContext {
  /// How to use :>
  /// Example
  /// context.width => return Screen size width

  /// Return Screen width
  double get width => MediaQuery.of(this).size.width;

  /// Return Screen height
  double get height => MediaQuery.of(this).size.height;

  /// Return Screen dpi
  double get dpi => MediaQuery.of(this).devicePixelRatio;

  /// Return Safe area top
  double get safeAreaTop => MediaQuery.of(this).padding.top;

  /// Return Safe area bottom
  double get safeAreaBottom => MediaQuery.of(this).padding.bottom;

  /// Return Safe area [ top, bottom ]
  /// fix double 2 position :>
  List<double> get safeArea => [safeAreaTop, safeAreaBottom];

  /// Return dp to px
  /// Example => context.px(dp) :>
  double px(double dp) {
    // Convert design per units to pixel units
    // px = (dp * device ratio) / (design ratio)
    double px = (dp * MediaQuery.of(this).devicePixelRatio) / (808 / 375);
    return px;
  }

  /// Return percentHeight from design height
  double percentHeight(double dp) {
    // px = design element height * screen height / design height
    double px = (dp * max(width, height)) / 812;
    return px;
  }

  /// Return percentWidth from design width
  double percentWidth(double dp) {
    // px = design element width * screen width / design width
    double px = (dp * min(width, height)) / 375;
    return px;
  }
}
