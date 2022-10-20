import 'package:flutter/material.dart';
import 'package:txmed/Screens/Welcome/constants.dart';
import 'package:txmed/components/already_have_account.dart';
import 'package:txmed/components/background.dart';
import 'package:txmed/constants.dart';
import 'components/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGround(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("TxMED",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: textColor)),
        const SignupForm(),
        const SizedBox(
          height: defaultPadding,
        ),
        const SizedBox(
          width: 100,
          child: SignupBtn(),
        ),
        const SizedBox(
          height: 10,
        ),
        AlreadyHaveAnAccountCheck(
          login: false,
          press: () {
            Navigator.of(context).pushNamed(
              '/login',
            );
          },
        ),
      ],
    ));
  }
}

class SignupBtn extends StatelessWidget {
  const SignupBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: "login_btn",
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: buttonColor,
              minimumSize: const Size.fromHeight(40),
            ),
            // TODO Connect to Firebase
            onPressed: () {
              Navigator.of(context).pushNamed(
                '/login',
              );
              print('signup pressed');
            },
            child: const Text("Sign Up")));
  }
}
