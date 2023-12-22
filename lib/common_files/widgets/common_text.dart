import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? fontColor;
  final FontWeight? fontWeight;
  final int? maxLine;
  const CommonText({
    super.key,
    required this.text,
    this.fontSize,
    this.fontColor,
    this.fontWeight,
    this.maxLine,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLine ?? 1,
      style: GoogleFonts.poppins(
        fontSize: fontSize ?? 34,
        color: fontColor ?? Colors.white,
        fontWeight: fontWeight ?? FontWeight.w500,
      ),
    );
  }
}
