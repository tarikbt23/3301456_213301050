import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Iletisim extends StatefulWidget {
  const Iletisim({Key? key}) : super(key: key);

  @override
  State<Iletisim> createState() => _IletisimState();
}

class _IletisimState extends State<Iletisim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.lightBlue[50]),
        title: Text('İletişim',
          style: GoogleFonts.courgette(),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Mail: ttuna670@gmail.com",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            SizedBox(height: 10),
            Text("Geliştirici ile bu hesaptan iletişim kurabilirsiniz.", style: TextStyle(fontSize: 15,),),
          ],
        ),
      ),
    );
  }
}

