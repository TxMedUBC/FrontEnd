
import 'package:flutter/material.dart';
import 'package:txmed/components/drop_down.dart';
import 'package:txmed/components/patients.dart';

class FiltersBar extends StatelessWidget {
  const FiltersBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      NumberOfPatients(),
      Expanded(
          child: DropDownSearch(items: [
        Patient(id: 1, name: "Charlinho"),
        Patient(id: 2, name: "Ryan"),
        Patient(id: 3, name: "Frank")
      ], title: "Patients")),
      Flexible(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [SortBy()],
        ),
      )
    ]);
  }
}

class SortBy extends StatelessWidget {
  const SortBy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
          height: 60,
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Row(
            children: [
              Text("Sort By:", style: TextStyle(fontSize: 16)),
              Expanded(
                child: DropDownMenu(),
              )
            ],
          ),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 35, 42, 54),
              border: Border.all(color: Colors.black))),
    );
  }
}

class DropDownSearch extends StatelessWidget {
  String title = '';
  List<Patient> items = [];
  DropDownSearch(
      {Key? key, required List<Patient> this.items, required String this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Select Patients:  ", style: TextStyle(fontSize: 16)),
            Expanded(
              child: Center(
                  child:
                      MultiSelectField(patientList: items, title: this.title)),
            )
          ],
        ),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 35, 42, 54),
            border: Border.all(color: Colors.black)));
  }
}

class NumberOfPatients extends StatelessWidget {
  NumberOfPatients({
    Key? key,
    this.numberOfPatients = 52,
    this.numberOfPatientsShowing = 41,
  }) : super(key: key);

  int numberOfPatients;
  int numberOfPatientsShowing;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Center(
            child: Text(
          numberOfPatientsShowing.toString() +
              " Patients out of " +
              numberOfPatients.toString(),
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
        height: 60,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 35, 42, 54),
            border: Border.all(color: Colors.black)));
  }
}
