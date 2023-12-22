import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logistic_project/common_files/widgets/common_text.dart';

class CommonTextField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final VoidCallback? onTap;
  final TextEditingController controller;
  final bool obscureText;
  final Widget? suffixIcon;
  const CommonTextField({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.controller,
    this.obscureText = false,
    this.onTap,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        border: InputBorder.none,
        hintText: hintText,
        label: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: CommonText(
            text: labelText,
            fontSize: 15,
            fontColor: const Color(0xffAAAAAA),
          ),
        ),
        hintStyle: GoogleFonts.poppins(
          color: const Color(0xffAAAAAA),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffDBDBDB),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffDBDBDB),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffef5555),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffDBDBDB),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
