import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class PatientList extends StatelessWidget {
  const PatientList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [PatientDataList()],
    );
  }
}

class TopListNavBar extends StatelessWidget {
  const TopListNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

/// The home page of the application which hosts the datagrid.
class PatientDataList extends StatefulWidget {
  PatientDataList({Key? key}) : super(key: key);

  @override
  _PatientDataListState createState() => _PatientDataListState();
}

class _PatientDataListState extends State<PatientDataList> {
  List<Patient> _patients = <Patient>[];
  late PatientDataSource patientDataSource;

  @override
  void initState() {
    super.initState();
    _patients = getPatientData();
    patientDataSource = PatientDataSource(context, patientData: _patients);
  }

  @override
  Widget build(BuildContext context) {
    return SfDataGridTheme(
        data: SfDataGridThemeData(headerColor: const Color(0xff009889)),
        child: SfDataGrid(
          source: patientDataSource,
          columnWidthMode: ColumnWidthMode.fill,
          columns: <GridColumn>[
            GridColumn(
                columnName: 'name',
                label: Container(
                    padding: EdgeInsets.all(8.0),
                    alignment: Alignment.center,
                    child: Text('Name'))),
            GridColumn(
                columnName: 'acuity',
                label: Container(
                    padding: EdgeInsets.all(8.0),
                    alignment: Alignment.center,
                    child: Text(
                      'Acuity',
                      overflow: TextOverflow.ellipsis,
                    ))),
            GridColumn(
                columnName: 'waitingTime',
                label: Container(
                    padding: EdgeInsets.all(8.0),
                    alignment: Alignment.center,
                    child: Text('Waiting Time'))),
            GridColumn(
                columnName: 'heartBeat',
                label: Container(
                    padding: EdgeInsets.all(8.0),
                    alignment: Alignment.center,
                    child: Text('HeartBeat'))),
            GridColumn(
                columnName: 'oxigen',
                label: Container(
                    padding: EdgeInsets.all(8.0),
                    alignment: Alignment.center,
                    child: Text('Oxigen'))),
          ],
        ));
  }

  List<Patient> getPatientData() {
    return [
      Patient(10001, 'James', 3, 40, 100, 96),
      Patient(10002, 'Kathryn', 3, 40, 100, 96),
      Patient(10003, 'Lara', 3, 40, 100, 96),
      Patient(10004, 'Michael', 3, 40, 100, 96),
      Patient(10005, 'Martin', 3, 40, 100, 96),
      Patient(10006, 'Newberry', 3, 40, 100, 96),
      Patient(10007, 'Balnc', 3, 40, 100, 96),
      Patient(10008, 'Perry', 3, 40, 100, 96),
      Patient(10009, 'Gable', 3, 40, 100, 96),
      Patient(10010, 'Grimes', 3, 40, 100, 96)
    ];
  }
}

/// Custom business object class which contains properties to hold the detailed
/// information about the Patient which will be rendered in datagrid.
class Patient {
  /// Creates the Patient class with required details.
  Patient(this.id, this.name, this.acuity, this.waitingTime, this.heartBeat,
      this.oxigen);

  /// Id of an Patient.
  final int id;

  /// Name of an Patient.
  final String name;

  /// Designation of an Patient.
  final int acuity;

  /// Waiting time of an Patient.
  final int waitingTime;

  /// Heartbeat of an Patient.
  final int heartBeat;

  /// Oxigen an Patient.
  final int oxigen;
}

/// An object to set the Patient collection data source to the datagrid. This
/// is used to map the Patient data to the datagrid widget.
class PatientDataSource extends DataGridSource {
  
  final BuildContext context;
  /// Creates the Patient data source class with required details.
  PatientDataSource(this.context, {required List<Patient> patientData}) {
    _PatientData = patientData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<String>(columnName: 'name', value: e.name),
              DataGridCell<int>(columnName: 'acuity', value: e.acuity),
              DataGridCell<int>(
                  columnName: 'waitingTime', value: e.waitingTime),
              DataGridCell<int>(columnName: 'heartBeat', value: e.heartBeat),
              DataGridCell<int>(columnName: 'oxigen', value: e.oxigen),
            ]))
        .toList();
  }

  List<DataGridRow> _PatientData = [];

  @override
  List<DataGridRow> get rows => _PatientData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
      if (e.columnName == "name") {
        return InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(
                  '/patient',
                  arguments: e.value.toString(),
                );
              print("Container clicked ${e.value.toString()}");
            },
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(8.0),
              child: Text(e.value.toString()),
            ));
      }else{
        return Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(8.0),
              child: Text(e.value.toString()),
            );
      }
    }).toList());
  }
}
