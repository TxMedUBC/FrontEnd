import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class drawLiveEcgCard extends StatelessWidget {
  const drawLiveEcgCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Expanded(flex: 2, child: Padding(
              padding: EdgeInsets.all(0),
              child: Card(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(4),
                    child: Text("Live ECG",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.end,
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        )),
                  ),
                  Image(image: AssetImage("assets/icons/ecg.jpg"), color: null,)
                ],
              )))),
        Expanded(flex: 3, child: 
              SizedBox())
        ]);
  }
}
