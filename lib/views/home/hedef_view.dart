import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:studybuddy/views/home/edit_hedef.dart';
import '../../models/hedef_model.dart';

class Hedeflerim extends StatelessWidget {
  String title = "";
  String description = "";

  @override
  Widget build(BuildContext context) {
    final hedef = context.watch<List<HedefModel>>();

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: Text(
          'Hedeflerim',
          style: GoogleFonts.courgette(),
        ),
      ),
      body: ListView.builder(
          itemCount: hedef.length,
          itemBuilder: (context, index) => Card(
                color: Colors.purple[100],
                margin: const EdgeInsets.all(15),
                child: ListTile(
                  leading: Icon(
                    Icons.check,
                    color: Colors.purple[100],
                    size: 36.0,
                  ),
                  title: Text(hedef[index].title!),
                  subtitle: Text(hedef[index].descripton!),
                  isThreeLine: true,
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => EditHedef(hedef[index])));
                  },
                ),
              )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => EditHedef()));
        },
      ),
    );
  }
}
