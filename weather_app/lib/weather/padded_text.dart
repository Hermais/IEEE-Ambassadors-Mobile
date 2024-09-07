import 'package:flutter/material.dart';

class PaddedText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final double? paddingValue;
  const PaddedText(this.text, {super.key, this.style, this.paddingValue});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(paddingValue ?? 8.0),
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
