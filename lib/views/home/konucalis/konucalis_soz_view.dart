import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widgets/konucalis_soz_widget.dart';

class KonuCalisSoz extends StatefulWidget {
  const KonuCalisSoz({Key? key}) : super(key: key);

  @override
  State<KonuCalisSoz> createState() => _KonuCalisSozState();
}

class _KonuCalisSozState extends State<KonuCalisSoz> {
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
        child: SozListView(),
      ),
    );
  }
}

