import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Kalangun extends StatefulWidget {
  const Kalangun({Key? key}) : super(key: key);

  @override
  State<Kalangun> createState() => _KalangunState();
}

class _KalangunState extends State<Kalangun> {
  @override
  Widget build(BuildContext context) {
    int year = 2024;
    int month = 6;
    int day = 15;

    DateTime now = DateTime.now();
    DateTime selectedDate = DateTime(year, month, day);
    int difference = selectedDate.difference(now).inDays;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sınava Kaç Gün Var ?',
          style: GoogleFonts.courgette(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("2024 YKS 'ye ", style: TextStyle(fontSize: 25)),
            Text("$difference", style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),),
            Text("gün kaldı.", style: TextStyle(fontSize: 25))
          ],
        )
      ),
    );
  }
}
