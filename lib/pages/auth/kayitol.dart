import 'package:flutter/material.dart';
import '../../widget/kayitol_widget.dart';

class Kaydol extends StatefulWidget {
  const Kaydol({Key? key}) : super(key: key);

  @override
  State<Kaydol> createState() => _KaydolState();
}

class _KaydolState extends State<Kaydol> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'StuddyBuddy',
            style: TextStyle(fontSize: 35),
          ),
        ),
      ),
      body: Kaydolwidget(),
    );
  }
}
