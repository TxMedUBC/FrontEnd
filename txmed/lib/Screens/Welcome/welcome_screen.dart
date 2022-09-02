import 'package:flutter/material.dart';
import 'package:txmed/components/background.dart';
import 'components/login_signup_btn.dart';
import 'components/welcome_image.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGround(
        child: Column(
      children: [
        Expanded(child: WelcomeImage()),
        SizedBox(
          child: LoginSignupBtn(),
          width: 150,
        ),
      ],
    ));
  }
}
