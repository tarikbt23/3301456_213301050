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
          title: Text("Geliştirici Hakkında",
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
                        scale: 1.45,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 60),
                      Image.asset(
                        'assets/images/logoo.jpg',
                        scale: 6.5,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Center(
                child: Column(
                  children: [
                    Text("Geliştirici Hakkında" , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),),
                    SizedBox(height: 30,),
                    Container(
                      child: Text(""" Merhaba, ben Tarık Berkay TUNA.Selçuk Üniversitesi Bilgisayar Mühendisliği öğrencisiyim.Umarım ilk göz ağrım StudyBuddy uygulamasını beğenmişsinizdir :) Mail atarak bana geri dönütte bulunabilirsiniz.""",
                      style: TextStyle(fontSize: 16),),
                    ),
                  ],
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}

