import 'package:flutter/material.dart';
import '../../utils/file_utils.dart';
import 'package:google_fonts/google_fonts.dart';

class DenemeAnaliz extends StatefulWidget {
  const DenemeAnaliz({Key? key}) : super(key: key);

  @override
  State<DenemeAnaliz> createState() => _DenemeAnalizState();
}

class _DenemeAnalizState extends State<DenemeAnaliz> {
  String fileContents = "Veri Yok";
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.lightBlue[50]),
        title: Text('Deneme Analizlerim',
          style: GoogleFonts.courgette(),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: myController,
              ),
            ),
            ElevatedButton(
              child: const Text("Dosyaya Kaydet"),
              onPressed: () {
                FileUtils.saveToFile(myController.text);
              },
            ),
            ElevatedButton(
              child: const Text("Dosyadan Oku"),
              onPressed: () {
                FileUtils.readFromFile().then((contents) {
                  setState(() {
                    fileContents = contents;
                  });
                });
              },
            ),
            Text(fileContents),
          ],
        ),
      ),
    );
  }
}

/*import 'package:flutter/material.dart';

class DenemeAnalizwidget extends StatefulWidget {
  const DenemeAnalizwidget({Key? key}) : super(key: key);

  @override
  State<DenemeAnalizwidget> createState() => _DenemeAnalizwidgetState();
}

class _DenemeAnalizwidgetState extends State<DenemeAnalizwidget> {
  TextEditingController t1 = TextEditingController();
  List yapilacaklar = [];
  elemanEkle() {
    setState(() {
      yapilacaklar.add(t1.text);
      t1.clear();
    });
  }

  elemanCikar() {
    setState(() {
      yapilacaklar.remove(t1.text);
      t1.clear();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
              child: ListView.builder(
                itemCount: yapilacaklar.length,
                itemBuilder: (context, siraNumarasi) => ListTile(
                  title: Text(yapilacaklar[siraNumarasi]),
                ),
              )),
          TextField(
            controller: t1,
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
}*/
