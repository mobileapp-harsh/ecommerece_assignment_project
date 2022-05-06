import 'package:flutter/cupertino.dart';

extension FormatString on String {
  String getFormatedString() {
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}

extension WidgetPadding on Widget {
  Widget getPaddingWidget() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: this,
    );
  }
}
