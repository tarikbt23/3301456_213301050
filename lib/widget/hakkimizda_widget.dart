import 'package:flutter/material.dart';

class Hakkimizdawidget extends StatefulWidget {
  const Hakkimizdawidget({Key? key}) : super(key: key);

  @override
  State<Hakkimizdawidget> createState() => _HakkimizdawidgetState();
}

class _HakkimizdawidgetState extends State<Hakkimizdawidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}
