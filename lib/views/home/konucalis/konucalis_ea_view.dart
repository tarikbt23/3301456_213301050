import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widgets/konucalis_ea_widget.dart';

class KonuCalisEa extends StatefulWidget {
  const KonuCalisEa({Key? key}) : super(key: key);

  @override
  State<KonuCalisEa> createState() => _KonuCalisEaState();
}

class _KonuCalisEaState extends State<KonuCalisEa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'AYT Konuları',
          style: GoogleFonts.courgette(),
        ),
      ),
      body: Center(
        child: AytEaListView(),
      ),
    );
  }
}

