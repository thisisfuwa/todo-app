import 'package:flutter/material.dart';

class AppColor {
  /// Add Color below Here :>
  static const Color blackPrimary = Color(0xFF3a3a3a);
  static const Color whitePrimary = Color(0xFFf5f8f8);
  static const Color greyPrimary = Color(0xFF77828E);
  static const Color redPrimary = Color(0xFFed3833);
  static const Color greenPrimary = Color(0xFF22c759);
  static const Color bluePrimary = Color(0xFF0568f6);

  // Secondary
  static const Color greySecondary = Color(0xFFc1c3ca);
  static const Color whiteSecondary = Colors.white;
  static const Color greenSecondary = Color(0xFFe8f9ee);

  // Tertiary
  static const Color greyTertiary = Color(0xFFdce0ea);

  // Quaternary
  static const Color grayQuaternary = Color(0xFFf4f5f8);

  // Senary
  static const Color graySenary = Color(0xFFf4f4f7);

  // Element
  static const Color backgroundColor = Color(0xFFf5f8f8);
  static const Color borderColor = Color(0xFFc1c3ca);
  static const Color textColor = Color(0xFF9fa3ae);

  // SHIMMER
  static const Color shimmerBaseColor = Color(0xFFE0E0E0);
  static const Color shimmerHighlightColor = Color(0xFFF5F5F5);

  /// Add Gradient AppBar here :>
  /// Appbar MainPage
  static const Gradient gradientAppBar = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color.fromARGB(255, 164, 35, 119),
      Color.fromARGB(255, 217, 44, 62),
      Color.fromARGB(255, 238, 147, 36),
    ],
  );

  /// Appbar MainPage
  static const Gradient newGradientAppBar = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xFFED1A2F),
      Color(0xFFf13c21),
      Color(0xFFFF8E00),
      // Color(0xFFFF8E00),
    ],
  );

  /// Add Gradient below here :>
  /// CLCR => Center left to Center right
  static const Gradient gradientCLCR = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xFF8B1EE9),
      Color(0xFFCE128B),
      Color(0xFFED1A2F),
      Color(0xFFFF8E00),
    ],
  );

  /// TLBR => Top left to Bottom right
  static const Gradient gradientTLBR = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFF34863),
      Color(0xFFCE27DB),
      Color(0xFFAB18DF),
      Color(0xFF8B1EE9),
      Color(0xFF68BCFB),
    ],
  );

  /// Gradient date button
  static const Gradient gradientDate = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFF34863),
      Color(0xFFCE27DB),
      Color(0xFFAB18DF),
    ],
  );

  /// Gradient dot carousel
  static const Gradient dotCarousel = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFF34863),
      Color(0xFFCE27DB),
    ],
  );

  /// Gradient New package
  static const Gradient newPackage = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      Color(0xFFCE128B),
      Color(0xFFED1A2F),
      Color(0xFFFF8E00),
    ],
  );

  /// Shadow
  static BoxShadow buttonShadow = const BoxShadow(
    color: Color.fromRGBO(34, 199, 89, 0.3),
    blurRadius: 20.0,
    offset: Offset(0, 5),
  );
}
