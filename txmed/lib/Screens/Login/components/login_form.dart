import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

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
            cursorColor: Colors.white,
            onSaved: (email) {},
            decoration: InputDecoration(
              hintText: "Your email",
              prefixIcon: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                child: Icon(Icons.person),
              ),
            ),
          ),
        ),
        TextFieldContainer(
          child: TextFormField(
            textInputAction: TextInputAction.done,
            obscureText: true,
            cursorColor: Colors.white,
            onSaved: (email) {},
            decoration: InputDecoration(
              hintText: "Your password",
              prefixIcon: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
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
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        width: size.width * 0.8,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 123, 143, 160),
            borderRadius: BorderRadius.circular(12)),
        child: child);
  }
}
