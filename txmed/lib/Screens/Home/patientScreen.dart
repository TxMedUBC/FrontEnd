import 'package:flutter/material.dart';
import 'package:txmed/Screens/Home/Dashboard/components/graph.dart';
import 'package:txmed/components/topNavigationBar.dart';

class PatientScreen extends StatelessWidget {
  const PatientScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topNavigationBar(),
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
                child: Column(
              children: [PatientHeader(description: "Charlino,M,32"), Graph(ytitle: "Heart Rate",),Graph(ytitle: "RESP",)],
            ))
          ],
        ),
      ),
    );
  }
}

class PatientHeader extends StatelessWidget {
  final String description;
  const PatientHeader({Key? key, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: InkWell(
        child: Icon(
          Icons.arrow_back,
          size: 40,
        ),
        onTap: () {
          Navigator.of(context).pop();
        },
      ),
      title: Center(
        child: Text(
          description,
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
