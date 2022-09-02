import 'package:flutter/material.dart';
import 'package:txmed/Screens/Home/Dashboard/dahboard_screen.dart';
import 'package:txmed/components/side_menu.dart';
import 'package:txmed/components/topNavigationBar.dart';
import 'package:provider/provider.dart';
import 'package:txmed/controllers/MenuController.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topNavigationBar(),
      body: SafeArea(
        child: Row(
          children: [Expanded(child: DashboardScreen())],
        ),
      ),
    );
  }
}
