import 'dart:io';
import 'package:flutter/material.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

class Sinavlar extends StatefulWidget {
  @override
  _SinavlarState createState() => _SinavlarState();
}

class _SinavlarState extends State<Sinavlar> {
  String _filePath = "";

  Future<String> get _localDevicePath async {
    final devicePath = await getApplicationDocumentsDirectory();
    return devicePath.path;
  }

  Future<File> _localFile({required String path, required String type}) async {
    String path = await _localDevicePath;

    var newPath = await Directory("$path/$path").create();
    return File("${newPath.path}/cevahir.$type");
  }

  Future _downloadSamplePDF() async {
    final response = await http.get(Uri.parse(
        "https://uzemegitim.selcuk.edu.tr/kilavuzlar/ogrencigiris.pdf"));
    if (response.statusCode == 200) {
      final file = await _localFile(path: "pdfs", type: "pdf");
      final saveFile = await file.writeAsBytes(response.bodyBytes);
      print("Dosya yazma işlemi tamamlandı. Dosyanın yolu: ${saveFile.path}");
      setState(() {
        _filePath = saveFile.path;
      });
    } else {
      print(response.statusCode);
    }
  }

  Future _downloadSampleVideo() async {
    final _response = await http
        .get(Uri.parse("https://samplelib.com/lib/download/mp4/sample-5s.mp4"));
    if (_response.statusCode == 200) {
      final _file = await _localFile(
        path: "mp4s",
        type: "mp4",
      );
      final _saveFile = await _file.writeAsBytes(_response.bodyBytes);
      print("Dosya yazma işlemi tamamlandı. Dosyanın yolu: ${_saveFile.path}");
      setState(() {
        _filePath = _saveFile.path;
      });
    } else {
      print(_response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton.icon(
              icon: Icon(Icons.file_download),
              label: Text("Örnek Pdf İndir"),
              onPressed: () {
                _downloadSamplePDF();
              },
            ),
            TextButton.icon(
              icon: Icon(Icons.file_download),
              label: Text("Örnek Video İndir"),
              onPressed: () {
                _downloadSampleVideo();
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(_filePath),
            ),
            TextButton.icon(
              icon: Icon(Icons.tv),
              label: Text("İndirilen Dosyayı Göster"),
              onPressed: () async {
                final _openFile = await OpenFilex.open(_filePath);
                print(_openFile);
              },
            ),
          ],
        ),
      ),
    );
  }
}