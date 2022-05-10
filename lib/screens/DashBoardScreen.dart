import 'package:dashboard_v1/constants.dart';
import 'package:dashboard_v1/widgets/patientCount.dart';
import 'package:dashboard_v1/widgets/patientList.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PatientCount(),
                ],
              ),
              SizedBox(height: defaultPadding),
              PatientList(),
            ],
          )),
    );
  }
}
