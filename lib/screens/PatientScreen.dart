import 'dart:convert';

import 'package:dashboard_v1/responsive.dart';
import 'package:dashboard_v1/widgets/topNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:dashboard_v1/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import '../services/remote_services.dart';
import '../models/post.dart';
import '../widgets/liveEcgCard.dart';
import 'dart:async';

class PatientScreen extends StatelessWidget {
  final String data;

  const PatientScreen({Key? key, required String this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 5,
              child: SafeArea(
                child: SingleChildScrollView(
                    padding: EdgeInsets.fromLTRB(
                        defaultPadding *
                            (MediaQuery.of(context).size.width) /
                            300,
                        defaultPadding,
                        defaultPadding *
                            (MediaQuery.of(context).size.width) /
                            300,
                        defaultPadding),
                    child: Column(
                      children: [
                        drawPatientName(name: data),
                        SizedBox(height: defaultPadding),
                        healthCards(),
                        drawLiveEcgCard()
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class drawPatientName extends StatelessWidget {
  final name;
  const drawPatientName({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
            style: GoogleFonts.lato(
              textStyle: const TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
          ),
        )
      ],
    );
  }
}

class healthCards extends StatelessWidget {
  const healthCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(children: const [
      drawHealthCard(
          icon: Icon(
            IconData(0xf02a0, fontFamily: 'MaterialIcons'),
            color: Colors.black,
            size: 50.0,
          ),
          description: "Acuity"),
      drawHealthCard(
          icon: Icon(
            IconData(0xe73b, fontFamily: 'MaterialIcons'),
            color: Colors.black,
            size: 50.0,
          ),
          description: "Waiting Time"),
      drawHealthCard(
          icon: Icon(
            IconData(0xf0635, fontFamily: 'MaterialIcons'),
            color: Colors.black,
            size: 50.0,
          ),
          description: "Heart Rate"),
      drawHealthCard(
          icon: Image(
              image: AssetImage("assets/icons/lungs.jpg"),
              color: null,
              width: 50,
              height: 50),
          description: "Oxigen"),
      drawHealthCard(
          icon: Image(
              image: AssetImage("assets/icons/temp.jpg"),
              color: null,
              width: 50,
              height: 50),
          description: "Temperature")
    ]));
  }
}

class drawHealthCard extends StatefulWidget {
  final String description;
  final icon;
  const drawHealthCard(
      {Key? key, required this.description, required this.icon})
      : super(key: key);

  @override
  State<drawHealthCard> createState() => _drawHealthCardState();
}

class _drawHealthCardState extends State<drawHealthCard> {
  PostData? data;
  var isLoaded = false;
  double? heartbeat;
  var _timer;

  @override
  void initState() {
    //fetch data from API
    getData();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) => getData());
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  getData() async {
    data = await RemoteService().getPosts();
    print(data!.data);
    Map<String, dynamic> userData = jsonDecode(data!.data);
    heartbeat = userData["hb"];
    print(userData["hb"]);
    if (data != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 5,
        child: Card(
            child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(children: [
                  Padding(padding: EdgeInsets.all(10), child: widget.icon),
                  Padding(
                      padding: EdgeInsets.all(3),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              widget.description,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: GoogleFonts.lato(
                                textStyle: const TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                            ),
                            Text(
                              heartbeat.toString(),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: GoogleFonts.lato(
                                textStyle: const TextStyle(
                                    fontSize: 30, color: Colors.blue),
                              ),
                            )
                          ]))
                ]))));
  }
}
