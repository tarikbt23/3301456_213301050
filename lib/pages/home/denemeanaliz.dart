import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widget/denemeanaliz_widget.dart';

class DenemeAnaliz extends StatefulWidget {
  const DenemeAnaliz({Key? key}) : super(key: key);

  @override
  State<DenemeAnaliz> createState() => _DenemeAnalizState();
}

class _DenemeAnalizState extends State<DenemeAnaliz> {
  TextEditingController t1 = TextEditingController();
  List yapilacaklar = [];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.lightBlue[50]),
        title: Text('Deneme Analizlerim',
          style: GoogleFonts.courgette(),),
      ),
      body: DenemeAnalizwidget(),
    );
  }
}
