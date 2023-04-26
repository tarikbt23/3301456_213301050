import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'kronometre_widget.dart';

class KonuCalisTyt extends StatefulWidget {
  const KonuCalisTyt({Key? key}) : super(key: key);

  @override
  State<KonuCalisTyt> createState() => _KonuCalisTytState();
}

class _KonuCalisTytState extends State<KonuCalisTyt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TYT Konuları',
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
                title: Text("TYT Türkçe"),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Kronometrewidget()));},
              child: ListTile(
                title: Text("TYT Matematik"),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Kronometrewidget()));},
              child: ListTile(
                title: Text("TYT Fizik"),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Kronometrewidget()));},
              child: ListTile(
                title: Text("TYT Kimya"),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Kronometrewidget()));},
              child: ListTile(
                title: Text("TYT Biyoloji"),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Kronometrewidget()));},
              child: ListTile(
                title: Text("TYT Felsefe"),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Kronometrewidget()));},
              child: ListTile(
                title: Text("TYT Tarih"),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Kronometrewidget()));},
              child: ListTile(
                title: Text("TYT Coğrafya"),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Kronometrewidget()));},
              child: ListTile(
                title: Text("TYT Din Kültürü ve Ahlak Bilgisi"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
