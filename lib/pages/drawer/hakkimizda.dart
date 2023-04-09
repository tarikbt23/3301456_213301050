import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widget/hakkimizda_widget.dart';

class Hakkimizda extends StatefulWidget {
  const Hakkimizda({Key? key}) : super(key: key);

  @override
  State<Hakkimizda> createState() => _HakkimizdaState();
}

class _HakkimizdaState extends State<Hakkimizda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.lightBlue[50]),
          title: Text("Hakkımızda",
            style: GoogleFonts.courgette(),)
      ),
      body: Hakkimizdawidget(),
    );
  }
}

