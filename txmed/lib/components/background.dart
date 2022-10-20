
import 'package:flutter/material.dart';
import 'package:txmed/constants.dart';

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
          color: welcomeBackgroundColor,
          borderRadius: BorderRadius.circular(12)),
      width: screenSizeW,
      height: screenSizeH,
      child: child,
    ))));
  }
}
