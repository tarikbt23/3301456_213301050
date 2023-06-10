import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../service/db_utils.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class DenemeAnaliz extends StatefulWidget {
  const DenemeAnaliz({Key? key}) : super(key: key);

  @override
  _DenemeAnalizState createState() => _DenemeAnalizState();
}

class _DenemeAnalizState extends State<DenemeAnaliz> {
  List<Map<String, dynamic>> _deneme = [];

  bool _isLoading = true;
  // Veritabanindaki tum verileri cekmek icin kullanilir
  void _refreshDenemeler() async {
    if (kIsWeb) {
      // Web platformunda CircularProgressIndicator göster
      setState(() {
        _isLoading = true;
      });
    }

    final data = await SQLHelper.getItems();

    setState(() {
      _deneme = data;
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _refreshDenemeler(); // Sayfa acildiginda itemlerin yuklenmesi
  }

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  // Floating action buttona basildiginda bu fonksiyon tetiklenecek
  // Güncelleme yapilinca da yine bu fonksiyon tetiklenecek
  void _showForm(int? id) async {
    if (id != null) {
      // id == null -> yeni item olustur
      // id != null -> var olan itemi guncelle
      final existingJournal =
      _deneme.firstWhere((element) => element['id'] == id);
      _titleController.text = existingJournal['title'];
      _descriptionController.text = existingJournal['description'];
    }

    showModalBottomSheet(
        context: context,
        elevation: 5,
        isScrollControlled: true,
        builder: (_) => Container(
          padding: EdgeInsets.only(
            top: 15,
            left: 15,
            right: 15,
            bottom: MediaQuery.of(context).viewInsets.bottom + 120, // klavyenin metin alanini kapsamasini onluyor
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                controller: _titleController,
                decoration: const InputDecoration(hintText: 'Deneme Bilgisi'),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: _descriptionController,
                decoration: const InputDecoration(hintText: 'Analiz'),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () async {
                  final navigator = Navigator.of(context); //"Don't use 'BuildContext's across async gaps" uyarısını almamak için
                  // Save new journal
                  if (id == null) {
                    await _addItem();
                  }

                  if (id != null) {
                    await _updateItem(id);
                  }

                  //Text field temizle
                  _titleController.text = '';
                  _descriptionController.text = '';

                  navigator.pop();
                },
                child: Text(id == null ? 'Yeni Deneme Ekle' : 'Güncelle'),
              )
            ],
          ),
        ));
  }

// Veritabanına yeni item ekle
  Future<void> _addItem() async {
    await SQLHelper.createItem(
        _titleController.text, _descriptionController.text);
    _refreshDenemeler();
  }

  // Itemi guncelle
  Future<void> _updateItem(int id) async {
    await SQLHelper.updateItem(
        id, _titleController.text, _descriptionController.text);
    _refreshDenemeler();
  }

  // Itemi sil
  void _deleteItem(int id) async {
    await SQLHelper.deleteItem(id);
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Başarıyla silindi!'),
    ));
    _refreshDenemeler();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Deneme Analizlerim',
          style: GoogleFonts.courgette(),
        ),
      ),
      body: _isLoading
          ? kIsWeb
          ? const Center(
        child: Text("Bu alan web sürümünde çalışmamaktadır."),
      )
          : const SizedBox() // Android ve iOS platformunda CircularProgress gösterilmez
          : ListView.builder(
        itemCount: _deneme.length,
        itemBuilder: (context, index) => Card(
          color: Colors.purple[100],
          margin: const EdgeInsets.all(15),
          child: ListTile(
            title: Text(_deneme[index]['title']),
            subtitle: Text(_deneme[index]['description']),
            trailing: SizedBox(
              width: 100,
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () => _showForm(_deneme[index]['id']),
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => _deleteItem(_deneme[index]['id']),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => _showForm(null),
      ),
    );
  }
}

