import 'package:flutter/material.dart';

extension BuildContextEntension<T> on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  Size get size => MediaQuery.of(this).size;
  double get paddingTop =>MediaQuery.of(this).viewPadding.top;
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => this.theme.textTheme;
}