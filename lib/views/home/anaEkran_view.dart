import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/anaekran_widget.dart';

class AnaEkran extends StatefulWidget {
  const AnaEkran({Key? key}) : super(key: key);

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  late final int seconds;
  late final int savedSeconds;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: const MenuDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.lightBlue[50]),
        title: Center(
          child: Text(
            'StudyBuddy',
            style: GoogleFonts.kaushanScript(
                textStyle:
                    const TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
          ),
        ),
      ),
      body: GestureDetector(
        onHorizontalDragUpdate: (dragUpdateDetails) {
          if (dragUpdateDetails.delta.dx > 0) {
            // sağa kaydırma işlemi
            _pageController.previousPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.ease);
          } else if (dragUpdateDetails.delta.dx < 0) {
            // sola kaydırma işlemi
            _pageController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.ease);
          }
        },
        child: PageView(
          controller: _pageController,
          children: const [Sayfa1Widget(), Sayfa2Widget()],
        ),
      ),
    );
  }
}
