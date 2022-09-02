import 'package:flutter/material.dart';
import 'package:txmed/components/already_have_account.dart';
import 'package:txmed/components/background.dart';
import 'package:txmed/constants.dart';
import 'components/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
        LoginForm(),
        SizedBox(
          height: defaultPadding,
        ),
        SizedBox(
          child: LoginBtn(),
          width: 100,
        ),
        SizedBox(
          height: 10,
        ),
        AlreadyHaveAnAccountCheck(
          press: () {
            Navigator.of(context).pushNamed(
              '/signup',
            );
          },
        ),
      ],
    ));
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
                '/homeScreen',
              );
              print('login pressed');
            },
            child: Text("Login")));
  }
}
