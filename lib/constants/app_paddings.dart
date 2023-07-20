import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppPaddings {
  AppPaddings._();
  static EdgeInsets lr16() => const EdgeInsets.only(left: 16, right: 16);
  static EdgeInsets lrt16() =>
      const EdgeInsets.only(left: 16, right: 16, top: 16);
  static EdgeInsets lr8() => const EdgeInsets.only(left: 8, right: 8);
  static EdgeInsets t48() => const EdgeInsets.only(top: 48);
  static EdgeInsets lrbt48() =>  EdgeInsets.all(30.h);
  static EdgeInsets lr2() => const EdgeInsets.only(left: 2, right: 2);
  static EdgeInsets lrt8() => const EdgeInsets.only(left: 8, right: 8, top: 8);
  static EdgeInsets lr24() => const EdgeInsets.only(left: 24, right: 24);
  static EdgeInsets lrt24() =>
      const EdgeInsets.only(left: 24, right: 24, top: 24);
  static EdgeInsets lr12() => const EdgeInsets.only(left: 12, right: 12);
  static EdgeInsets lrt12() =>
      EdgeInsets.only(left: 12.h, right: 12.h, top: 3.h);
}
