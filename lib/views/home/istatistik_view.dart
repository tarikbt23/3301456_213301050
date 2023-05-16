import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Istatistik extends StatefulWidget {
  const Istatistik({Key? key}) : super(key: key);

  @override
  State<Istatistik> createState() => _IstatistikState();
}

class _IstatistikState extends State<Istatistik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'İstatistiklerim',
            style: GoogleFonts.courgette(),
          ),
        ),
        body: const Center(
            child: CircularProgressIndicator()
        )
    );
  }
}
