import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final int lines;
  final TextStyle style;
  // final TextDirection textDirection;
  final TextAlign? textAlign;

  const CustomText(
      {super.key,
      required this.text,
      this.color = Colors.white,
      this.lines = 99,
      required this.style,
      // this.textDirection = TextDirection.rtl,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      context.tr(text),
      style: style,
      maxLines: lines,
      textAlign: textAlign,
      
      //  overflow: TextOverflow.ellipsis,
    );
  }
}
