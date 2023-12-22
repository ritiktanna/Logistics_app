import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logistic_project/common_files/widgets/common_text.dart';

class SocialMediaButton extends StatelessWidget {
  final String assetsPath;
  final String? text;
  const SocialMediaButton({super.key, required this.assetsPath, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.maxFinite,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffDBDBDB)),
          borderRadius: const BorderRadius.all(Radius.circular(30))),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(assetsPath),
            if (text != null) ...[
              const SizedBox(width: 15),
              CommonText(
                text: text ?? '',
                fontSize: 18,
                fontColor: const Color(0xff1B1B1B),
              )
            ]
          ],
        ),
      ),
    );
  }
}
