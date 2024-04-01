import 'package:flutter/material.dart';

class TextInfo extends StatelessWidget {
  const TextInfo({super.key, required this.title, required this.textStyle});
  final String title;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: 8,
      style: textStyle,
    );
  }
}
