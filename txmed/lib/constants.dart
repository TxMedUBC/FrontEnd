import 'package:flutter/material.dart';

/// A constant that is true if the application was compiled to run on the web.
///
/// This implementation takes advantage of the fact that JavaScript does not
/// support integers. In this environment, Dart's doubles and ints are
/// backed by the same kind of object. Thus a double `0.0` is identical
/// to an integer `0`. This is not true for Dart code running in AOT or on the
/// VM.
const bool kIsWeb = identical(0, 0.0);

Color backgroundColor = const Color.fromARGB(255, 4, 2, 19);
Color canvasColor = const Color.fromARGB(255, 4, 2, 19);

const double defaultPadding = 16.0;

const profilePicPadding = 20.0;