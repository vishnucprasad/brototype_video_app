import 'package:flutter/material.dart';

extension ContextX on BuildContext {
  Brightness get platformBrightness => MediaQuery.of(this).platformBrightness;
  bool get isDarkMode => platformBrightness == Brightness.dark;
}
