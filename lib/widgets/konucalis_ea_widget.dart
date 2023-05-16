import 'package:flutter/material.dart';
import '../views/kronometre_viewdart';

class AytEaListView extends StatelessWidget {
  const AytEaListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        MatElevatedButton(),
        EdebiyatElevatedButton(),
        TarihElevatedButton(),
        CografyaElevatedButton(),
        FelsefeElevatedButton(),
      ],
    );
  }
}

class FelsefeElevatedButton extends StatelessWidget {
  const FelsefeElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Kronometrewidget()));},
      child: const ListTile(
        title: Text("AYT Felsefe"),
      ),
    );
  }
}

class CografyaElevatedButton extends StatelessWidget {
  const CografyaElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Kronometrewidget()));},
      child: const ListTile(
        title: Text("AYT Coğrafya"),
      ),
    );
  }
}

class TarihElevatedButton extends StatelessWidget {
  const TarihElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Kronometrewidget()));},
      child: const ListTile(
        title: Text("AYT Tarih"),
      ),
    );
  }
}

class EdebiyatElevatedButton extends StatelessWidget {
  const EdebiyatElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Kronometrewidget()));},
      child: const ListTile(
        title: Text("AYT Edebiyat"),
      ),
    );
  }
}

class MatElevatedButton extends StatelessWidget {
  const MatElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Kronometrewidget()));},
      child: const ListTile(
        title: Text("AYT Matematik"),
      ),
    );
  }
}