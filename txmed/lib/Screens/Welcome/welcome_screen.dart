import 'package:flutter/material.dart';
import 'package:txmed/components/background.dart';
import 'components/login_signup_btn.dart';
import 'components/welcome_image.dart';

const double loginSignupBtnWidth = 150;

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGround(
        child: Column(
      children: const [
        Expanded(child: WelcomeImage()),
        SizedBox(
          width: loginSignupBtnWidth,
          child: LoginSignupBtn(),
        ),
      ],
    ));
  }
}
