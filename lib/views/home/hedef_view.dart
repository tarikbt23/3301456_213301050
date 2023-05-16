import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Hedeflerim extends StatefulWidget {
  const Hedeflerim({Key? key}) : super(key: key);

  @override
  State<Hedeflerim> createState() => _HedeflerimState();
}

class _HedeflerimState extends State<Hedeflerim> {
  TextEditingController girdi = TextEditingController();
  List yapilacaklar = [];

  elemanEkle() {
    setState(() {
      yapilacaklar.add(girdi.text);
      girdi.clear();
    });
  }

  elemanCikar() {
    setState(() {
      yapilacaklar.remove(girdi.text);
      girdi.clear();
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.lightBlue[50]),
        title: Text('Günlük hedeflerim',
          style: GoogleFonts.courgette(),),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                  itemCount: yapilacaklar.length,
                  //hata almamak için listenin boyutunu veriyoruz
                  itemBuilder: (context, siraNumarasi) => ListTile(
                    title: Text(yapilacaklar[siraNumarasi]),
                  ),
                )),
            TextField(
              controller: girdi,
            ),
            SizedBox(
                width: 200,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    elemanEkle();
                  },
                  style: ButtonStyle(),
                  child: Text('Ekle'),
                )),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              height: 40,
              child: ElevatedButton(
                onPressed: elemanCikar,
                child: Text('Çıkar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



