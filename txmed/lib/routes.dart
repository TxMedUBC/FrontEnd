import 'package:flutter/material.dart';
import 'package:txmed/Screens/Home/homeScreen.dart';
import 'package:txmed/Screens/Login/login_screen.dart';
import 'package:txmed/Screens/Singup/signup_screen.dart';
import 'Screens/Home/patientScreen.dart';
import 'Screens/Welcome/welcome_screen.dart';
import 'constants.dart';

typedef PathWidgetBuilder = Widget Function(BuildContext);

class Path {
  const Path(this.pattern, this.builder, {this.openInSecondScreen = false});
  final String pattern;
  final PathWidgetBuilder builder;
  final bool openInSecondScreen;
}

class RouteConfiguration {
  /// List of [Path] to for route matching. When a named route is pushed with
  /// [Navigator.pushNamed], the route name is matched with the [Path.pattern]
  /// in the list below. As soon as there is a match, the associated builder
  /// will be returned. This means that the paths higher up in the list will
  /// take priority.
  static List<Path> paths = [
    Path(
      '/welcome',
      (context) => const WelcomeScreen(),
      openInSecondScreen: false,
    ),
    Path(
      '/login',
      (context) => const LoginScreen(),
      openInSecondScreen: false,
    ),
    Path(
      '/signup',
      (context) => const SignupScreen(),
      openInSecondScreen: false,
    ),Path(
      '/homeScreen',
      (context) => const HomeScreen(),
      openInSecondScreen: false,
    ),
    Path(
      '/patientScreen',
      (context) => const PatientScreen(),
      openInSecondScreen: false,
    ),
  ];

  /// The route generator callback used when the app is navigated to a named
  /// route. Set it on the [MaterialApp.onGenerateRoute] or
  /// [WidgetsApp.onGenerateRoute] to make use of the [paths] for route
  /// matching.
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    for (final path in paths) {
      if (settings.name! == path.pattern) {
        return MaterialPageRoute<void>(
          builder: (context) => path.builder(context),
          settings: settings,
        );
      }
    }
    return null;
  }
}
