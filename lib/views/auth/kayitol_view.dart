import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/constants.dart';
import '../../widgets/kayitol_widget.dart';

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
        iconTheme: IconThemeData(color: Colors.lightBlue[50]),
        title: Center(
          child: Text(
            'StudyBuddy',
            style: GoogleFonts.kaushanScript(textStyle: const TextStyle(fontSize: 35 , fontWeight: FontWeight.bold)),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Form(
                key: formKey1,
                child: Column(
                  children: const [
                    AdTextFormField(),
                    SoyadTextFormField(),
                    MailTextFormField(),
                    TelNoTextFormField(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: KayitElevatedButton(),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}



