import 'package:flutter/material.dart';
import 'package:logistic_project/common_files/widgets/common_text.dart';

class IntroButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  const IntroButton({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.25),
            borderRadius: BorderRadius.circular(500),
          ),
          child: Center(
            child: CommonText(
              text: text,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
