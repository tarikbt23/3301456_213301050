import 'package:flutter/material.dart';

class Iletisimwidget extends StatefulWidget {
  const Iletisimwidget({Key? key}) : super(key: key);

  @override
  State<Iletisimwidget> createState() => _IletisimwidgetState();
}

class _IletisimwidgetState extends State<Iletisimwidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Mail: ttuna670@gmail.com",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          SizedBox(height: 10),
          Text("Geliştirici ile bu hesaptan iletişim kurabilirsiniz.", style: TextStyle(fontSize: 15,),),
        ],
      ),
    );
  }
}
