import 'package:flutter/material.dart';
import 'package:logistic_project/common_files/widgets/common_text.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final Color? buttonColor;
  final double? height;
  final double? width;
  const CommonButton(
      {super.key,
      required this.text,
      this.buttonColor,
      this.height,
      this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 60,
      width: width ?? double.maxFinite,
      decoration: BoxDecoration(
        color: buttonColor ?? const Color(0xff3986FE),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Center(
        child: CommonText(
          text: text,
          fontSize: 20,
        ),
      ),
    );
  }
}
