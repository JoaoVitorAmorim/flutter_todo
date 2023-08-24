import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final TextStyle style;

  const TextWidget({
    super.key,
    this.text = '',
    required this.textAlign,
    required this.style,
  });

  factory TextWidget.title(
    String text, {
    TextAlign? textAlign,
  }) {
    return TextWidget(
      textAlign: TextAlign.start,
      text: text,
      style: const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    );
  }
  factory TextWidget.normal(String text,
      {TextAlign? textAlign,
      TextStyle style = const TextStyle(
        fontSize: 18,
      )}) {
    return TextWidget(
      textAlign: TextAlign.start,
      text: text,
      style: style,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
    );
  }
}
