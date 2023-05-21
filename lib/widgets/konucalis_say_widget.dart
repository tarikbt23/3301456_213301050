import 'package:flutter/material.dart';
import '../views/home/konucalis/kronometre_view.dart';


class AytSayListView extends StatelessWidget {
  const AytSayListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        MatElevatedButton(),
        FizikElevatedButton(),
        KimyaElevatedButton(),
        BiyolojiElevatedButton(),
      ],
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
        title: Text("AYT Biyoloji"),
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
        title: Text("AYT Kimya"),
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
        title: Text("AYT Fizik"),
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