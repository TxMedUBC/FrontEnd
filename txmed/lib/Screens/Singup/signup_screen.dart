import 'package:flutter/material.dart';
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
        Text("TxMED",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(252, 232, 217, 217))),
        SignupForm(),
        SizedBox(
          height: defaultPadding,
        ),
        SizedBox(
          child: SignupBtn(),
          width: 100,
        ),
        SizedBox(
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
              primary: Colors.blue,
              minimumSize: const Size.fromHeight(40),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(
                '/login',
              );
              print('signup pressed');
            },
            child: Text("Sign Up")));
  }
}
