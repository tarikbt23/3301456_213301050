import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studybuddy/widget/kronometre_widget.dart';

class KonuCalisSoz extends StatefulWidget {
  const KonuCalisSoz({Key? key}) : super(key: key);

  @override
  State<KonuCalisSoz> createState() => _KonuCalisSozState();
}

class _KonuCalisSozState extends State<KonuCalisSoz> {
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
                title: Text("AYT Edebiyat"),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Kronometrewidget()));},
              child: ListTile(
                title: Text("AYT Tarih"),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Kronometrewidget()));},
              child: ListTile(
                title: Text("AYT Coğrafya"),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Kronometrewidget()));},
              child: ListTile(
                title: Text("AYT Felsefe"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}