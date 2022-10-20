import 'package:flutter/material.dart';
import 'package:txmed/Screens/Welcome/constants.dart';
import 'package:txmed/constants.dart';

class LoginSignupBtn extends StatelessWidget {
  const LoginSignupBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: defaultSizedBoxPad,
        ),
        Expanded(
          child: Column(
            children: const [
              SizedBox(
                height: defaultPadding,
              ),
              LoginBtn(),
              SizedBox(
                height: defaultSizedBoxPad,
              ),
              SignupBtn(),
              SizedBox(
                height: defaultPadding,
              ),
            ],
          ),
        ),
        const SizedBox(
          width: defaultSizedBoxPad,
        ),
      ],
    );
  }
}

class LoginBtn extends StatelessWidget {
  const LoginBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: "login_btn",
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: buttonColor,
              minimumSize: buttonSize,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(
                '/login',
              );
              print('login pressed');
            },
            child: const Text("Login")));
  }
}

class SignupBtn extends StatelessWidget {
  const SignupBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: "signup_btn",
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: buttonColor,
              minimumSize: buttonSize,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(
                '/signup',
              );
              print('signup pressed');
            },
            child: const Text("Sign Up")));
  }
}
