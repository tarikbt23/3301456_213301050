import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widget/iletisim_widget.dart';

class Iletisim extends StatefulWidget {
  const Iletisim({Key? key}) : super(key: key);

  @override
  State<Iletisim> createState() => _IletisimState();
}

class _IletisimState extends State<Iletisim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.lightBlue[50]),
        title: Text('İletişim',
          style: GoogleFonts.courgette(),),
      ),
      body: Iletisimwidget(),
    );
  }
}

