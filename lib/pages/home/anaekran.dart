import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studybuddy/pages/drawer/ayarlar.dart';
import 'package:studybuddy/pages/drawer/hakkimizda.dart';
import 'package:studybuddy/pages/drawer/iletisim.dart';
import '../../widget/anaEkran_widget.dart';



class AnaEkran extends StatefulWidget {
  const AnaEkran({Key? key}) : super(key: key);

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  late final int seconds;
  late final int savedSeconds;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.lightBlue[50],
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              child: Center(
                child: Text(
                  'MENÜ',
                  style: TextStyle(
                    color: Colors.lightBlue[50],
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text('Ayarlar'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Ayarlar()));
              },
            ),
            ListTile(
              title: Text('İletişim'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Iletisim()));
              },
            ),
            ListTile(
              title: Text('Hakkımızda'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Hakkimizda()));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.lightBlue[50]),
        title: Center(
          child: Text(
            'StudyBuddy',
            style: GoogleFonts.kaushanScript(textStyle: TextStyle(fontSize: 35 , fontWeight: FontWeight.bold)),
          ),
        ),
      ),
      body: AnaEkranwidget(),
    );
  }
}
