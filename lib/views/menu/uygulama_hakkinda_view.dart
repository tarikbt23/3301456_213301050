import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UygulamaHakkinda extends StatefulWidget {
  const UygulamaHakkinda({Key? key}) : super(key: key);

  @override
  State<UygulamaHakkinda> createState() => _UygulamaHakkindaState();
}

class _UygulamaHakkindaState extends State<UygulamaHakkinda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.lightBlue[50]),
          title: Text("Uygulama Hakkında",
            style: GoogleFonts.courgette(),)
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Container(
              color: Colors.purple[100],
              child: Text("Study Buddy Nedir ?",
              style: TextStyle(fontSize: 20),),
            ),
            SizedBox(height: 10,),
            Container(child: Text("Study Buddy, öğrencileri ders çalışırken asiste etmeye yönelik geliştirilmiş bir uygulamadır.",
            style: TextStyle(fontSize: 16),)),
            Divider(thickness: 5,),
            SizedBox(height: 10,),
            Container(
              color: Colors.purple[100],
              child: Text("Study Buddy İle Neler Yapılabilir?",
                style: TextStyle(fontSize: 20),),
            ),
            const HakkimizdaListTile(title: (Text("Hedeflerinizi yazabilirsiniz")),),
            const HakkimizdaListTile(title: (Text("Konu çalışma sürelerinizi tutabilirsiniz")),),
            const HakkimizdaListTile(title: (Text("Deneme analizleri yapabilirsiniz.")),),
            const HakkimizdaListTile(title: (Text("Not alabilirsiniz")),),
            const HakkimizdaListTile(title: (Text("İpuçlarından faydalanabilirsiniz")),),
            const HakkimizdaListTile(title: (Text("Sınava kaç gün kaldığını takip edebilirsiniz.")),),
            const HakkimizdaListTile(title: (Text("Okuma kitabı önerilerini ve bilgilerini inceleyebilirsiniz.")),),
            const Divider(thickness: 5,),
          ],
        ),
      ),
    );
  }
}
class HakkimizdaListTile extends StatelessWidget {
  final Widget title;

  const HakkimizdaListTile({required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.check),
      title: title,
    );
  }
}
