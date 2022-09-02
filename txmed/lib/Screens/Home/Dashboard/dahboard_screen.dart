import 'package:flutter/material.dart';
import 'package:txmed/Screens/Home/Dashboard/components/card.dart';
import 'components/filter_bar.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        FiltersBar(),
        Expanded(
          child: GridView.count(
              childAspectRatio: 1.25,
              crossAxisCount: 5,
              children: [
                PatientCard(
                  name: 'Charlino',
                  location: "DTU",
                  catValue: 2.toString(),
                  notificationValue: 2,
                  heartbeatValue: 80,
                  oxygenValue: 98,
                ),
                PatientCard(
                  name: 'Roger',
                  location: "DTU",
                  catValue: 3.toString(),
                  notificationValue: 1,
                  heartbeatValue: 85,
                  oxygenValue: 99,
                ),
                PatientCard(
                  name: 'Rafa',
                  location: "DTU",
                  catValue: 1.toString(),
                  notificationValue: 3,
                  heartbeatValue: 100,
                  oxygenValue: 90,
                ),
                PatientCard(
                  name: 'Charlino',
                  location: "DTU",
                  catValue: 2.toString(),
                  notificationValue: 2,
                  heartbeatValue: 80,
                  oxygenValue: 98,
                ),
                PatientCard(
                  name: 'Charlino',
                  location: "DTU",
                  catValue: 2.toString(),
                  notificationValue: 2,
                  heartbeatValue: 80,
                  oxygenValue: 98,
                ),
                PatientCard(
                  name: 'Charlino',
                  location: "DTU",
                  catValue: 2.toString(),
                  notificationValue: 2,
                  heartbeatValue: 80,
                  oxygenValue: 98,
                ),
                PatientCard(
                  name: 'Charlino',
                  location: "DTU",
                  catValue: 2.toString(),
                  notificationValue: 2,
                  heartbeatValue: 80,
                  oxygenValue: 98,
                ),
              ]),
        )
      ]),
    );
  }
}
