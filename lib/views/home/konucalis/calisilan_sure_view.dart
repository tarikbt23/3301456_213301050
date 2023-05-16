import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalisilanSure extends StatelessWidget {
  final int seconds;
  final int minutes;
  final int hours;
  const CalisilanSure(this.seconds, this.minutes, this.hours, {super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Konu Çalış', style: GoogleFonts.courgette(),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Çalışılan süre ',
              style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20,),
            Text("$hours:$minutes:$seconds",
              style: TextStyle(fontSize: 30),)
          ],
        ),
      ),
    );
  }
}
