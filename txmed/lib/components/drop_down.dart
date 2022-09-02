import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:txmed/components/patients.dart';

class DropDownMenu extends StatefulWidget {
  const DropDownMenu({Key? key}) : super(key: key);

  @override
  State<DropDownMenu> createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  String dropdownValue = 'CAT';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        height: 40,
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.white),
        child: DropdownButton<String>(
          focusColor: Colors.white,
          underline: SizedBox(),
          dropdownColor: Colors.white,
          isExpanded: true,
          icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
          value: dropdownValue,
          elevation: 16,
          style: const TextStyle(
              color: Colors.black, fontFamily: "Roboto", fontSize: 15),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: <String>['CAT', 'Battery', 'Name', 'Area']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}


class MultiSelectField extends StatefulWidget {
  MultiSelectField({Key? key, required this.patientList, this.title})
      : super(key: key);
  final String? title;
  List<Patient> patientList;
  @override
  _MultiSelectFieldState createState() => _MultiSelectFieldState();
}

class _MultiSelectFieldState extends State<MultiSelectField> {
  List<Object?> _selectedPatients = [];
  final _multiSelectKey = GlobalKey<FormFieldState>();
  List<Patient> _patients = [];

  @override
  void initState() {
    _patients = widget.patientList;
    final _items = _patients
        .map((patient) => MultiSelectItem<Patient>(patient, patient.name))
        .toList();
    _selectedPatients = _patients;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiSelectDialogField(
      closeSearchIcon: Icon(Icons.close, color: Colors.black),
      items: _patients.map((e) => MultiSelectItem(e, e.name)).toList(),
      title: Text("Patients",
          style: const TextStyle(
              color: Colors.black, fontFamily: "Roboto", fontSize: 20)),
      selectedColor: Colors.black,
      backgroundColor: Colors.white,
      searchable: true,
      searchIcon: Icon(
        Icons.search,
        color: Colors.black,
      ),
      searchTextStyle: TextStyle(color: Colors.black),
      searchHintStyle: TextStyle(color: Colors.black),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      buttonIcon: Icon(Icons.arrow_drop_down, color: Colors.black),
      buttonText: Text(
        "Patients",
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),
      ),
      onConfirm: (results) {
        //_selectedAnimals = results;
      },
    );
  }
}
