import 'package:dashboard_v1/responsive.dart';
import 'package:dashboard_v1/screens/DashBoardScreen.dart';
import 'package:dashboard_v1/widgets/topNavigationBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topNavigationBar(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            //if(Responsive.isDesktop(context))
              // Todo SideScreen
            const Expanded(
              flex:5, 
              child: DashBoardScreen(),
            )
        ],
      ),
     ),
    );
  }
}