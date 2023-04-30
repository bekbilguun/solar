import 'package:flutter/material.dart';

import '../constants.dart';

showSnackbar(BuildContext context, String message) {
  if (message.isEmpty) return;
  // Find the Scaffold in the Widget tree and use it to show a SnackBar
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message), backgroundColor: Theme.of(context).primaryColor));
}

class MessageInCenterWidget extends StatelessWidget {
  final String _message;

  const MessageInCenterWidget(this._message, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(_message,
          key: const ValueKey("messageInCenter"),
          style: const TextStyle(fontSize: FONT_MD, color: Colors.black)),
    );
  }
}

void safePop(BuildContext context) {
  safePopWithResult(context, true);
}

void safePopWithResult<T>(BuildContext context, T result) {
  if (Navigator.of(context).canPop()) {
    Navigator.pop(context, result);
  }
}

bool isWiderScreen(BuildContext context) {
  return MediaQuery.of(context).size.width > 600;
}
