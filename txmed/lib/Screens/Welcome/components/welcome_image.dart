import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:txmed/constants.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: defaultPadding,
        ),
        Text("TxMED",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(252, 232, 217, 217))),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: SizedBox(
            child: Image.asset("assets/icons/login.png", fit: BoxFit.fitHeight),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
