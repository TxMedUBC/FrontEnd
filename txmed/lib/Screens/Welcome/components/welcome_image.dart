import 'package:flutter/material.dart';
import 'package:txmed/constants.dart';


const double textSize = 30;
const double spaceBtwElems = 10;

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: defaultPadding,
        ),
        const Text("TxMED",
            style: TextStyle(
                fontSize: textSize,
                fontWeight: FontWeight.bold,
                color: textColor)),
        const SizedBox(
          height: spaceBtwElems,
        ),
        Expanded(
          child: SizedBox(
            child: Image.asset("assets/icons/login.png", fit: BoxFit.fitHeight),
          ),
        ),
        const SizedBox(
          height: spaceBtwElems,
        ),
      ],
    );
  }
}
