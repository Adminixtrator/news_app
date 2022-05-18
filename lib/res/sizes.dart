import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class NSize {

  static Widget vH(double h) => SizedBox(height: h);
  static Widget hW(double w) => SizedBox(width: w);
  static Widget hAw(double h, double w) => SizedBox(height: h, width: w);

}

abstract class MSize {
  static double take(double i) => i;
}
