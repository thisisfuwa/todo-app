import 'package:flutter/material.dart';

import 'export.dart';

class AppText {
  // TextStyle
  // BOLD
  // styleHeader1
  static TextStyle arial36Bold = TextStyle(
    fontSize: AppSpace.xll + 2, // size 36
    fontWeight: FontWeight.bold,
    color: AppColor.blackPrimary,
    fontFamily: AppThemeFontFamily.arial.data,
  );

  static TextStyle arial24Bold = TextStyle(
    fontSize: AppSpace.l, // size 24
    fontWeight: FontWeight.bold,
    color: AppColor.blackPrimary,
    fontFamily: AppThemeFontFamily.arial.data,
  );

  static TextStyle arial20Bold = TextStyle(
    fontSize: AppSpace.n, // size 20
    fontWeight: FontWeight.bold,
    color: AppColor.blackPrimary,
    fontFamily: AppThemeFontFamily.arial.data,
  );

  // styleHeader2
  static TextStyle arial18Bold = TextStyle(
    fontSize: AppSpace.mm, // size 18
    fontWeight: FontWeight.bold,
    color: AppColor.blackPrimary,
    fontFamily: AppThemeFontFamily.arial.data,
  );

  //
  static TextStyle arial16Bold = TextStyle(
    fontSize: AppSpace.m, // size 16
    fontWeight: FontWeight.bold,
    color: AppColor.blackPrimary,
    fontFamily: AppThemeFontFamily.arial.data,
  );

  // styleHeader4
  static TextStyle arial14Bold = TextStyle(
    fontSize: AppSpace.sl, // size 14
    fontWeight: FontWeight.bold,
    color: AppColor.blackPrimary,
    fontFamily: AppThemeFontFamily.arial.data,
  );

  // styleHeader5
  static TextStyle arial12Bold = TextStyle(
    fontSize: AppSpace.sm, // size 12
    fontWeight: FontWeight.bold,
    color: AppColor.blackPrimary,
    fontFamily: AppThemeFontFamily.arial.data,
  );

  //W500
  static TextStyle arial24W500 = TextStyle(
    fontSize: AppSpace.l, // size 24
    fontWeight: FontWeight.w500,
    color: AppColor.blackPrimary,
    fontFamily: AppThemeFontFamily.arial.data,
  );

  static TextStyle arial20W500 = TextStyle(
    fontSize: AppSpace.n, // size 20
    fontWeight: FontWeight.w500,
    color: AppColor.blackPrimary,
    fontFamily: AppThemeFontFamily.arial.data,
  );

  static TextStyle arial18W500 = TextStyle(
    fontSize: AppSpace.mm, // size 18
    fontWeight: FontWeight.w500,
    color: AppColor.blackPrimary,
    fontFamily: AppThemeFontFamily.arial.data,
  );

  // styleHeader3
  static TextStyle arial16W500 = TextStyle(
    fontSize: (AppSpace.m), // size 16
    fontWeight: FontWeight.w500,
    color: AppColor.blackPrimary,
    fontFamily: AppThemeFontFamily.arial.data,
  );

  static TextStyle arial14W500 = TextStyle(
    fontSize: AppSpace.sl, // size 14
    fontWeight: FontWeight.w500,
    color: AppColor.blackPrimary,
    fontFamily: AppThemeFontFamily.arial.data,
  );

  static TextStyle arial14W500Underline = TextStyle(
    fontSize: AppSpace.sl,
    // size 14
    fontWeight: FontWeight.w500,
    color: AppColor.blackPrimary,
    fontFamily: AppThemeFontFamily.arial.data,
    decoration: TextDecoration.underline,
  );

  static TextStyle arial12W500 = TextStyle(
    fontSize: AppSpace.sm, // size 12
    fontWeight: FontWeight.w500,
    color: AppColor.blackPrimary,
    fontFamily: AppThemeFontFamily.arial.data,
  );

  // NORMAL
  // styleBody1
  static TextStyle arial24Normal = TextStyle(
    fontSize: AppSpace.l, // size 24
    fontWeight: FontWeight.normal,
    color: AppColor.blackPrimary,
    fontFamily: AppThemeFontFamily.arial.data,
  );

  // styleBody2
  static TextStyle arial18Normal = TextStyle(
    fontSize: AppSpace.mm, // size 18
    fontWeight: FontWeight.normal,
    color: AppColor.blackPrimary,
    fontFamily: AppThemeFontFamily.arial.data,
  );

  // styleBody3
  static TextStyle arial16Normal = TextStyle(
    fontSize: (AppSpace.sl), // size 16
    fontWeight: FontWeight.normal,
    color: AppColor.blackPrimary,
    fontFamily: AppThemeFontFamily.arial.data,
  );

  static TextStyle arial14Normal = TextStyle(
    fontSize: AppSpace.sl, // size 14
    fontWeight: FontWeight.normal,
    color: AppColor.blackPrimary,
    fontFamily: AppThemeFontFamily.arial.data,
  );

  static TextStyle arial12Normal = TextStyle(
    fontSize: AppSpace.sm, // size 12
    fontWeight: FontWeight.normal,
    color: AppColor.blackPrimary,
    fontFamily: AppThemeFontFamily.arial.data,
  );

  static TextStyle arial10Normal = TextStyle(
    fontSize: AppSpace.s + 2, // size 10
    fontWeight: FontWeight.normal,
    fontFamily: AppThemeFontFamily.arial.data,
  );

  //W300
  static TextStyle arial24W300 = TextStyle(
    fontSize: AppSpace.l, // size 24
    fontWeight: FontWeight.w300,
    color: AppColor.blackPrimary,
    fontFamily: AppThemeFontFamily.arial.data,
  );

  static TextStyle arial18W300 = TextStyle(
    fontSize: AppSpace.mm, // size 18
    fontWeight: FontWeight.w300,
    color: AppColor.blackPrimary,
    fontFamily: AppThemeFontFamily.arial.data,
  );

  static TextStyle arial16W300 = TextStyle(
    fontSize: (AppSpace.sl + 2), // size 16
    fontWeight: FontWeight.w300,
    color: AppColor.blackPrimary,
    fontFamily: AppThemeFontFamily.arial.data,
  );

  static TextStyle arial14W300 = TextStyle(
    fontSize: AppSpace.sl, // size 14
    fontWeight: FontWeight.w300,
    color: AppColor.blackPrimary,
    fontFamily: AppThemeFontFamily.arial.data,
  );

  static TextStyle arial12W300 = TextStyle(
    fontSize: AppSpace.sm, // size 12
    fontWeight: FontWeight.w300,
    color: AppColor.blackPrimary,
    fontFamily: AppThemeFontFamily.arial.data,
  );

  // Decoration box widget
  static final Decoration decorationWithShadow = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
    border: Border.all(color: Colors.grey.shade200),
    boxShadow: [
      BoxShadow(
        color: AppColor.blackPrimary.withOpacity(0.1),
        spreadRadius: 2,
        blurRadius: 4,
        offset: const Offset(0, 3),
      ),
    ],
  );
}
