import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widgets/konucalis_tyt_widget.dart';

class KonuCalisTyt extends StatefulWidget {
  const KonuCalisTyt({Key? key}) : super(key: key);

  @override
  State<KonuCalisTyt> createState() => _KonuCalisTytState();
}

class _KonuCalisTytState extends State<KonuCalisTyt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TYT Konuları',
          style: GoogleFonts.courgette(),
        ),
      ),
      body: const Center(
        child: TytListView(),
      ),
    );
  }
}


