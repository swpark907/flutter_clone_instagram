import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MessagePopup extends StatelessWidget {
  final String? title;
  final String? message;
  final Function()? okCallback;
  final Function()? cancelCallback;
  const MessagePopup({
    Key? key,
    required this.title,
    required this.message,
    required this.okCallback,
    this.cancelCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.transparent,
        child: Column(
          children: [
            Text(
              title!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.black,
              ),
            ),
            Text(
              message!,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            )
          ],
        ));
  }
}
