import 'package:flutter/material.dart';

import '../views/kronometre_viewdart';

class TytListView extends StatelessWidget {
  const TytListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        TurkceElevatedButton(),
        MatematikElevatedButton(),
        FizikElevatedButton(),
        KimyaElevatedButton(),
        BiyolojiElevatedButton(),
        FelsefeElevatedButton(),
        TarihElevatedButton(),
        CografyaElevatedButton(),
        DinElevatedButton(),
      ],
    );
  }
}

class DinElevatedButton extends StatelessWidget {
  const DinElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Kronometrewidget()));},
      child: const ListTile(
        title: Text("TYT Din Kültürü ve Ahlak Bilgisi"),
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
        title: Text("TYT Coğrafya"),
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
        title: Text("TYT Tarih"),
      ),
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
        title: Text("TYT Felsefe"),
      ),
    );
  }
}

class BiyolojiElevatedButton extends StatelessWidget {
  const BiyolojiElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Kronometrewidget()));},
      child: const ListTile(
        title: Text("TYT Biyoloji"),
      ),
    );
  }
}

class KimyaElevatedButton extends StatelessWidget {
  const KimyaElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Kronometrewidget()));},
      child: const ListTile(
        title: Text("TYT Kimya"),
      ),
    );
  }
}

class FizikElevatedButton extends StatelessWidget {
  const FizikElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Kronometrewidget()));},
      child: const ListTile(
        title: Text("TYT Fizik"),
      ),
    );
  }
}

class MatematikElevatedButton extends StatelessWidget {
  const MatematikElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Kronometrewidget()));},
      child: const ListTile(
        title: Text("TYT Matematik"),
      ),
    );
  }
}

class TurkceElevatedButton extends StatelessWidget {
  const TurkceElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[200]),
      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Kronometrewidget()));},
      child: const ListTile(
        title: Text("TYT Türkçe"),
      ),
    );
  }
}