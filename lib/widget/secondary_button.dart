import 'package:flutter/material.dart';
import 'package:solar/widget/types.dart';
import 'app_button.dart';

class SecondaryButton extends AppButton {
  SecondaryButton(
      {super.key,
      required String text,
      required Function() onPressed,
      WidgetSize size = WidgetSize.md})
      : super(text, onPressed, const Color(0xFFFFFFFF), size);

  @override
  Color getBackgroundColor(BuildContext context) {
    return Colors.blue;
  }
}
