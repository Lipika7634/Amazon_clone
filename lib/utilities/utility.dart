import 'package:flutter/material.dart';

Size getScreenSize() {
  return MediaQueryData.fromWindow(WidgetsBinding.instance!.window).size;
}