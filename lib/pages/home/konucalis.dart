import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widget/konucalis_widget.dart';

class KonuCalis extends StatefulWidget {
  const KonuCalis({Key? key}) : super(key: key);

  @override
  State<KonuCalis> createState() => _KonuCalisState();
}

class _KonuCalisState extends State<KonuCalis> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Konu Çalış',
          style: GoogleFonts.courgette(),),
      ),
      body: KonuCaliswidget(),
    );
  }
}