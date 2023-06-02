import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/file_utils.dart';

class Notlarim extends StatefulWidget {
  const Notlarim({Key? key});

  @override
  NotlarimState createState() => NotlarimState();
}

class NotlarimState extends State<Notlarim> {
  List<String> fileContentsList = [];
  final myController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _readFileContents(); //Dosyaya son yazdigimiz verileri ekrandan direkt okuyabilmek icin
  }

  void _readFileContents() async {
    final contents = await FileUtils.readFromFile();
    setState(() {
      if (contents.isNotEmpty) {
        fileContentsList = contents.split('\n');
      } else {
        fileContentsList.clear();
      }
    });
  }

  void _saveToFile() async {
    final text = myController.text;
    if (text.isNotEmpty) {
      fileContentsList.add(text);
      await FileUtils.saveToFile(fileContentsList.join('\n'));
      myController.clear();
      setState(() {}); // Değişiklikleri güncellemek için setState çağırılır
    }
  }

  void _deleteFile() async {
    await FileUtils.deleteFile();
    setState(() {
      fileContentsList = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notlarım',
          style: GoogleFonts.courgette(),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: fileContentsList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    fileContentsList[index],
                    style: const TextStyle(fontSize: 20),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: myController,
            ),
          ),
          ElevatedButton(
            onPressed: _saveToFile,
            child: const Text("Kaydet"),
          ),
          ElevatedButton(
            onPressed: _deleteFile,
            child: const Text("Notları Sil"),
          ),
        ],
      ),
    );
  }
}