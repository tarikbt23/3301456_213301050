import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widget/ayarlar_widget.dart';

class Ayarlar extends StatefulWidget {
  const Ayarlar({Key? key}) : super(key: key);

  @override
  State<Ayarlar> createState() => _AyarlarState();
}

class _AyarlarState extends State<Ayarlar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.lightBlue[50]),
        title: Text("Ayarlar",
          style: GoogleFonts.courgette(),),
      ),
      body: Ayarlarwidget(),
    );
  }
}

