import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widget/hedef_widget.dart';

class Hedeflerim extends StatefulWidget {
  const Hedeflerim({Key? key}) : super(key: key);

  @override
  State<Hedeflerim> createState() => _HedeflerimState();
}

class _HedeflerimState extends State<Hedeflerim> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.lightBlue[50]),
        title: Text('Günlük hedeflerim',
          style: GoogleFonts.courgette(),),
      ),
      body: Hedeflerimwidget(),
    );
  }
}
