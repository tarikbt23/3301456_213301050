import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Hakkimizda extends StatefulWidget {
  const Hakkimizda({Key? key}) : super(key: key);

  @override
  State<Hakkimizda> createState() => _HakkimizdaState();
}

class _HakkimizdaState extends State<Hakkimizda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.lightBlue[50]),
          title: Text("Hakkımızda",
            style: GoogleFonts.courgette(),)
      ),
      body: Center(
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 60),
                      Image.asset(
                        'assets/images/indir.jpg',
                        scale: 1.2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Geliştirici Hakkında" , style: TextStyle(fontSize: 24 , fontWeight: FontWeight.bold),),
                      SizedBox(height: 30,),
                      Text("Merhaba, ben Tarık Berkay TUNA",),
                      Text("Selçuk Üniversitesi Bilgisayar Mühendisliği öğrencisiyim."),
                      Text("Umarım ilk göz ağrım StudyBuddy uygulamasını beğenmişsinizdir :)"),
                      Text("Mail atarak bana geri dönütte bulunabilirsiniz."),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

