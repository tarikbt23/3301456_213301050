import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/anaekran_widget.dart';
import '../menu/ayarlar_view.dart';
import '../menu/hakkimizda_view.dart';
import '../menu/iletisim_view.dart';



class AnaEkran extends StatefulWidget {
  const AnaEkran({Key? key}) : super(key: key);

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  late final int seconds;
  late final int savedSeconds;
  final PageController _pageController = PageController();
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
      body: GestureDetector(
        onHorizontalDragUpdate: (dragUpdateDetails) {
          if (dragUpdateDetails.delta.dx > 0) {
            // sağa kaydırma işlemi
            _pageController.previousPage(
                duration: const Duration(milliseconds: 500), curve: Curves.ease);
          } else if (dragUpdateDetails.delta.dx < 0) {
            // sola kaydırma işlemi
            _pageController.nextPage(
                duration: const Duration(milliseconds: 500), curve: Curves.ease);
          }
        },
        child: PageView(
          controller: _pageController,
          children: const [
            Sayfa1Widget(),
            Sayfa2Widget()
          ],
        ),
      ),
    );
  }
}








