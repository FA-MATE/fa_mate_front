import 'package:flutter/material.dart';

class TextDefaultWidget extends StatelessWidget {
  const TextDefaultWidget({
    super.key,
    required this.title,
    this.fontSize,
    this.fontWeight,
    this.fontColor,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
  });

  final String title;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? fontColor;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: fontColor,
      ),
      textAlign: TextAlign.center,
      overflow: textOverflow,
      maxLines: maxLines,
    );
  }
}
