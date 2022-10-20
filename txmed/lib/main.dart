import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:txmed/constants.dart';
import 'routes.dart';

void main() {
  runApp(const TxMed());
}

class TxMed extends StatelessWidget {
  const TxMed({super.key, this.initialRoute, this.isTestMode = false});
  final String? initialRoute;
  final bool isTestMode;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TxMed',
      debugShowCheckedModeBanner: isTestMode,
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: canvasColor,
      ),
      initialRoute: '/welcome',
      onGenerateRoute: RouteConfiguration.onGenerateRoute,
    );
  }
}
