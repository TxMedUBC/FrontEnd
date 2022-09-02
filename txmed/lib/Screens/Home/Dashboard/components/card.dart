import 'package:flutter/material.dart';

class PatientCard extends StatelessWidget {
  String name;
  String location;
  String? catValue;
  int? notificationValue;
  int heartbeatValue;
  int oxygenValue;

  PatientCard(
      {Key? key,
      this.name = '-',
      this.location = '-',
      this.catValue,
      this.notificationValue,
      this.heartbeatValue = 0,
      this.oxygenValue = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            Navigator.of(context).pushNamed(
              '/patientScreen',
            );
          },
          child: Column(children: [
            PatientCardHeader(
              name: name,
              location: location,
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Tile(
                              size: 20, title: "CAT", value: catValue),
                        ),
                        Expanded(
                          child: Tile(
                              size: 15,
                              title: "Notifications",
                              value: notificationValue?.toString() ?? "?"),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Tile(
                              icon: ImageIcon(
                                AssetImage("assets/icons/heart_rate.png"),
                                color: Colors.black,
                                size: 40,
                              ),
                              size: 20,
                              value: heartbeatValue.toString() + "BPM"),
                        ),
                        Expanded(
                          child: Tile(
                              icon: ImageIcon(
                                AssetImage("assets/icons/lungs.png"),
                                color: Colors.black,
                                size: 40,
                              ),
                              size: 20,
                              value: oxygenValue.toString() + '%'),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Tile(
                              icon: ImageIcon(
                                AssetImage("assets/icons/thermometer.png"),
                                color: Colors.black,
                                size: 40,
                              ),
                              value: (38.6).toString() + " C"),
                        ),
                        Expanded(
                          child: Tile(
                              icon: ImageIcon(
                                AssetImage("assets/icons/bp.png"),
                                color: Colors.black,
                                size: 40,
                              ),
                              value: 120.toString() + '/' + 100.toString()),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class PatientCardHeader extends StatelessWidget {
  String name = 'Name?';
  String location = '';

  PatientCardHeader({
    Key? key,
    required this.name,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      mouseCursor: SystemMouseCursors.click,
      title: Text(
        name,
        style: TextStyle(fontSize: 25),
      ),
      subtitle: Text(
        location,
        style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 17),
      ),
      trailing: Icon(
        Icons.battery_0_bar,
        size: 40,
      ),
    );
  }
}

class Tile extends StatefulWidget {
  final Widget? icon;
  final String? title;
  final String? value;
  final double size;

  const Tile(
      {Key? key, this.icon, this.title, this.value, this.size = 20})
      : super(key: key);

  @override
  State<Tile> createState() =>
      _TileState(icon, title, value, size);
}

class _TileState extends State<Tile> {
  Widget? icon;
  String? title;
  String? value;
  double size;

  _TileState(this.icon, this.title, this.value, this.size);

  String infoBody(String? title, String? value) {
    if (title != null) {
      if (value != null) {
        return title + ": " + value;
      } else {
        return title + ": " + '-';
      }
    } else {
      if (value != null) {
        return value;
      } else {
        return '-';
      }
    }
    ;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.black, width: 1)),
      leading: icon,
      title: Center(
        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            infoBody(this.title, this.value),
          ),
        ),
      ),
    );
  }
}
