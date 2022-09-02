import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:txmed/constants.dart';

class LoginSignupBtn extends StatelessWidget {
  const LoginSignupBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 14,
        ),
        Expanded(
          child: Column(
            children: [
              SizedBox(
                height: defaultPadding,
              ),
              LoginBtn(),
              SizedBox(
                height: 14,
              ),
              SignupBtn(),
              SizedBox(
                height: defaultPadding,
              ),
            ],
          ),
        ),
        SizedBox(
          width: 14,
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
              primary: Colors.blue,
              minimumSize: const Size.fromHeight(40),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(
                '/login',
              );
              print('login pressed');
            },
            child: Text("Login")));
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
              primary: Colors.blue,
              minimumSize: const Size.fromHeight(40),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(
                '/signup',
              );
              print('signup pressed');
            },
            child: Text("Sign Up")));
  }
}
