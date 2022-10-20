import 'package:flutter/material.dart';
import 'package:txmed/constants.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldContainer(
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: cursorColor,
            onSaved: (email) {},
            decoration: const InputDecoration(
              hintText: "Your email",
              prefixIcon: Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 20, 0),
                child: Icon(Icons.person),
              ),
            ),
          ),
        ),
        TextFieldContainer(
          child: TextFormField(
            textInputAction: TextInputAction.done,
            obscureText: true,
            cursorColor: cursorColor,
            onSaved: (email) {},
            decoration: const InputDecoration(
              hintText: "Your password",
              prefixIcon: Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 20, 0),
                child: Icon(Icons.lock),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        width: size.width * 0.8,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 123, 143, 160),
            borderRadius: BorderRadius.circular(12)),
        child: child);
  }
}
