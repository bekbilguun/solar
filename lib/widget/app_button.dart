import 'package:flutter/material.dart';
import 'package:solar/widget/types.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final Color foregroundColor;
  final WidgetSize size;
  late final double padding;
  late final double fontSize;

  AppButton(this.text, this.onPressed, this.foregroundColor, this.size,
      {super.key}) {
    switch (size) {
      case WidgetSize.lg:
        padding = 30;
        fontSize = 16;
        break;
      case WidgetSize.sm:
        padding = 10;
        fontSize = 12;
        break;
      default:
        padding = 20;
        fontSize = 14;
    }
  }

  Color getBackgroundColor(BuildContext context) {
    return Theme.of(context).primaryColor;
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: getBackgroundColor(context),
          padding: EdgeInsets.all(padding)),
      onPressed: onPressed,
      child: Text(text,
          style: TextStyle(
            color: foregroundColor,
            fontSize: fontSize,
          )),
    );
  }
}
