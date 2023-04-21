import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray600 = fromHex('#897c80');

  static Color orange50 = fromHex('#fff1d8');

  static Color gray5004c = fromHex('#4ca9a9a9');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color gray900 = fromHex('#1e1511');

  static Color lightGreen9003f = fromHex('#3f5f3d00');

  static Color whiteA700 = fromHex('#ffffff');

  static Color orange300 = fromHex('#fbc157');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
