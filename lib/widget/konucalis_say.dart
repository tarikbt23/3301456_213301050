import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'kronometre_widget.dart';

class KonuCalisSay extends StatefulWidget {
  const KonuCalisSay({Key? key}) : super(key: key);

  @override
  State<KonuCalisSay> createState() => _KonuCalisSayState();
}

class _KonuCalisSayState extends State<KonuCalisSay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'AYT Konuları',
          style: GoogleFonts.courgette(),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Kronometrewidget()));},
              child: ListTile(
                title: Text("AYT Matematik"),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Kronometrewidget()));},
              child: ListTile(
                title: Text("AYT Fizik"),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Kronometrewidget()));},
              child: ListTile(
                title: Text("AYT Kimya"),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Kronometrewidget()));},
              child: ListTile(
                title: Text("AYT Biyoloji"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}