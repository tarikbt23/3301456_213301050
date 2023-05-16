import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widgets/konucalis_say_widget.dart';

class KonuCalisSay extends StatefulWidget {
  const KonuCalisSay({Key? key}) : super(key: key);

  @override
  State<KonuCalisSay> createState() => _KonuCalisSayState();
}

class _KonuCalisSayState extends State<KonuCalisSay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'AYT Konuları',
          style: GoogleFonts.courgette(),
        ),
      ),
      body: const Center(
        child: AytSayListView(),
      ),
    );
  }
}

