import 'package:flutter/material.dart';
import 'package:logistic_project/common_files/assets_path.dart';
import 'package:logistic_project/common_files/routes.dart';
import 'package:logistic_project/common_files/strings.dart';
import 'package:logistic_project/common_files/widgets/common_text.dart';
import 'package:logistic_project/screens/intro_screen/widgets/intro_button.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              ImgPath.introBg,
            ),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(0.8),
                Colors.transparent,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ).copyWith(top: 75, bottom: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CommonText(
                    text: introTitle1,
                  ),
                  const SizedBox(height: 25),
                  SizedBox(
                    height: 10,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => SizedBox(
                        width: 50,
                        child: Container(
                          decoration: BoxDecoration(
                            color: index == 0 ? Colors.white : Colors.white60,
                            borderRadius: BorderRadius.circular(
                              50,
                            ),
                          ),
                        ),
                      ),
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 10),
                      itemCount: 3,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      IntroButton(
                        onTap: () =>
                            Navigator.pushNamed(context, AppRouteString.login),
                        text: login,
                      ),
                      const SizedBox(width: 20),
                      const IntroButton(
                        text: signIn,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
