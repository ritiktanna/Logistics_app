import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logistic_project/common_files/assets_path.dart';
import 'package:logistic_project/common_files/strings.dart';
import 'package:logistic_project/common_files/widgets/common_button.dart';
import 'package:logistic_project/common_files/widgets/common_text.dart';
import 'package:logistic_project/common_files/widgets/common_textfield.dart';
import 'package:logistic_project/common_files/widgets/social_media_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 303,
              child: Stack(
                children: [
                  Container(
                    height: 303,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          ImgPath.loginImg,
                        ),
                      ),
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black54,
                            Colors.transparent,
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 0,
                    child: Padding(
                      padding: EdgeInsets.only(left: 35, bottom: 27),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 300,
                            child: CommonText(
                              text: signInToYourAccount,
                              maxLine: 2,
                              fontSize: 40,
                            ),
                          ),
                          CommonText(
                            text: signInToYourAccount,
                            fontSize: 16,
                            fontColor: Color(0xffC3C3C3),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 62),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: CommonTextField(
                hintText: enterEmail,
                labelText: email,
                controller: TextEditingController(),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: CommonTextField(
                hintText: enterPassword,
                labelText: password,
                controller: TextEditingController(),
                suffixIcon: const Icon(
                  CupertinoIcons.eye_fill,
                  color: Color(0xffDBDBDB),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Align(
                alignment: FractionalOffset.centerRight,
                child: CommonText(
                  text: forgotPassword,
                  fontColor: Colors.blue,
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: CommonButton(
                text: login,
              ),
            ),
            const SizedBox(height: 43),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      height: 3,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: CommonText(
                      text: orLoginWith,
                      fontColor: Color(0xff1B1B1B),
                      fontSize: 16,
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      height: 3,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 56),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Expanded(
                    child: SocialMediaButton(
                      assetsPath: SvgPath.google,
                      text: google,
                    ),
                  ),
                  SizedBox(width: 40),
                  Expanded(
                    child: SocialMediaButton(
                      assetsPath: SvgPath.facebook,
                      text: facebook,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 79),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CommonText(
                  text: dontHaveAccount,
                  fontSize: 18,
                  fontColor: Color(0xffAAAAAA),
                ),
                CommonText(
                  text: register,
                  fontSize: 18,
                  fontColor: Colors.blue,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
