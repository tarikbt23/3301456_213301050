import 'package:flutter/material.dart';

class Hedeflerimwidget extends StatefulWidget {
  const Hedeflerimwidget({Key? key}) : super(key: key);

  @override
  State<Hedeflerimwidget> createState() => _HedeflerimwidgetState();
}

class _HedeflerimwidgetState extends State<Hedeflerimwidget> {
  @override
  Widget build(BuildContext context) {
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
    return Center(
      child: Column(
        children: [
          Expanded(
              child: ListView.builder(
                itemCount: yapilacaklar.length,  //hata almamak için listenin boyutunu veriyoruz
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
                onPressed: (){
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
    );
  }
}
