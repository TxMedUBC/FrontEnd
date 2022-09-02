
import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  final Widget child;

  const BackGround({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
                child: Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 35, 42, 54),
          borderRadius: BorderRadius.circular(12)),
      width: 400,
      height: 400,
      child: child,
    ))));
  }
}
