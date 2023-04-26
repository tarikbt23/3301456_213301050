import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:studybuddy/widget/konucalis_ea.dart';
import 'package:studybuddy/widget/konucalis_say.dart';
import 'package:studybuddy/widget/konucalis_soz.dart';
import 'package:studybuddy/widget/konucalis_tyt.dart';

class KonuCalis extends StatefulWidget {
  const KonuCalis({Key? key}) : super(key: key);

  @override
  State<KonuCalis> createState() => _KonuCalisState();
}

class _KonuCalisState extends State<KonuCalis> {

  Future<Map<String, bool>> getSwitchValues() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool switch1Value = prefs.getBool('switch1') ?? false;
    bool switch2Value = prefs.getBool('switch2') ?? false;
    bool switch3Value = prefs.getBool('switch3') ?? false;

    return {'switch1': switch1Value, 'switch2': switch2Value, 'switch3': switch3Value};
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Konu Çalış',
          style: GoogleFonts.courgette(),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: InkResponse(
                      containedInkWell: true,
                      highlightShape: BoxShape.rectangle,
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => KonuCalisTyt()));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(50.0),
                            child: Ink.image(
                                width: 130,
                                height: 130,
                                image: const NetworkImage(
                                    'https://static.vecteezy.com/system/resources/previews/009/180/064/original/tyt-letter-logo-design-with-polygon-shape-tyt-polygon-and-cube-shape-logo-design-tyt-hexagon-logo-template-white-and-black-colors-tyt-monogram-business-and-real-estate-logo-vector.jpg')
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: InkResponse(
                      containedInkWell: true,
                      highlightShape: BoxShape.rectangle,
                      onTap: () async {
                        SharedPreferences prefs = await SharedPreferences.getInstance();
                        bool switch1Value = prefs.getBool('switch1') ?? false;
                        bool switch2Value = prefs.getBool('switch2') ?? false;
                        bool switch3Value = prefs.getBool('switch3') ?? false;
                        if (switch1Value) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => KonuCalisSay()),
                          );
                        }
                        if (switch2Value) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => KonuCalisSoz()),
                          );
                        }
                        if (switch3Value) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => KonuCalisEa()),
                          );
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(50.0),
                            child: Ink.image(
                                width: 130,
                                height: 130,
                                image: const NetworkImage(
                                    'https://static.vecteezy.com/system/resources/previews/008/978/322/non_2x/ayt-letter-logo-design-with-polygon-shape-ayt-polygon-and-cube-shape-logo-design-ayt-hexagon-logo-template-white-and-black-colors-ayt-monogram-business-and-real-estate-logo-vector.jpg')
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/*return Scaffold(
      appBar: AppBar(
        title: Text(
          'Konu Çalış',
          style: GoogleFonts.courgette(),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => KonuCaliswidget()));},
              child: ListTile(
                title: Text("TYT Türkçe"),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => KonuCaliswidget()));},
              child: ListTile(
                title: Text("TYT Matematik"),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => KonuCaliswidget()));},
              child: ListTile(
                title: Text("TYT Fizik"),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => KonuCaliswidget()));},
              child: ListTile(
                title: Text("TYT Kimya"),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => KonuCaliswidget()));},
              child: ListTile(
                title: Text("TYT Biyoloji"),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => KonuCaliswidget()));},
              child: ListTile(
                title: Text("TYT Felsefe"),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => KonuCaliswidget()));},
              child: ListTile(
                title: Text("TYT Tarih"),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => KonuCaliswidget()));},
              child: ListTile(
                title: Text("TYT Coğrafya"),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => KonuCaliswidget()));},
              child: ListTile(
                title: Text("TYT Din Kültürü ve Ahlak Bilgisi"),
              ),
            ),
          ],
        ),
      ),
    );*/