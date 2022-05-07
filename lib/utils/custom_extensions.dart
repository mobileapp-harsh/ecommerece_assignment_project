import 'package:flutter/cupertino.dart';

// Create Format String Extention
extension FormatString on String {
  String getFormatedString() {
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}

// Create Padding Extention
extension WidgetPadding on Widget {
  Widget getPaddingWidget() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: this,
    );
  }
}

// Create HexColor Extention
extension HexColor on Color {
  
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}