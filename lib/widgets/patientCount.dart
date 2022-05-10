import 'package:dashboard_v1/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PatientCount extends StatelessWidget {
  PatientCount({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        height: 120.0,
        width: 300.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Patient Count",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            CountPatient()
          ],
        ));
  }
}

class CountPatient extends StatefulWidget {
  const CountPatient({Key? key}) : super(key: key);

  @override
  State<CountPatient> createState() => _CountPatientState();
}

class _CountPatientState extends State<CountPatient> {
  @override
  Widget build(BuildContext context) {
    String p_count = 145.toString();
    return Center(
        child: 
        Text(
            p_count,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                  fontSize: 40,
                  color: Color.fromARGB(255, 37, 37, 168),
                  fontWeight: FontWeight.w700),
            )));
  }
}
