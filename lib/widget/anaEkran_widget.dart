import 'package:flutter/material.dart';
import 'package:studybuddy/widget/ipucu.dart';
import 'package:studybuddy/widget/kalangun.dart';
import 'package:studybuddy/widget/sinavlar.dart';
import '../pages/home/denemeanaliz.dart';
import '../pages/home/hedef.dart';
import '../pages/home/istatistik.dart';
import '../pages/home/konucalis.dart';
import '../constants/constants.dart';

class AnaEkranwidget extends StatefulWidget {
  const AnaEkranwidget({Key? key}) : super(key: key);

  @override
  State<AnaEkranwidget> createState() => _AnaEkranwidgetState();
}

class _AnaEkranwidgetState extends State<AnaEkranwidget> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (dragUpdateDetails) {
        if (dragUpdateDetails.delta.dx > 0) {
          // sağa kaydırma işlemi
          _pageController.previousPage(
              duration: const Duration(milliseconds: 500), curve: Curves.ease);
        } else if (dragUpdateDetails.delta.dx < 0) {
          // sola kaydırma işlemi
          _pageController.nextPage(
              duration: const Duration(milliseconds: 500), curve: Curves.ease);
        }
      },
      child: PageView(
        controller: _pageController,
        children: [
          Center(
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: InkResponse(
                          containedInkWell: true,
                          highlightShape: BoxShape.rectangle,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Hedeflerim()));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(50.0),
                                child: Ink.image(
                                    width: 100,
                                    height: 100,
                                    image: const AssetImage(
                                        'assets/images/tik.jpg')),
                              ),
                              const Text(
                                'Günlük hedeflerim',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10)
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkResponse(
                          containedInkWell: true,
                          highlightShape: BoxShape.rectangle,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const DenemeAnaliz()));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(50.0),
                                child: Ink.image(
                                    width: 100,
                                    height: 100,
                                    image: const AssetImage(
                                        'assets/images/calarsaat.jpg')),
                              ),
                              const Text(
                                'Deneme Analizlerim',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: InkResponse(
                          containedInkWell: true,
                          highlightShape: BoxShape.rectangle,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const KonuCalis()));
                          },
                          // Add image & text
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(50.0),
                                child: Ink.image(
                                    width: 100,
                                    height: 100,
                                    image: const AssetImage(
                                        'assets/images/derscalis.jpg')),
                              ),
                              const Text(
                                'Konu çalış',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10)
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkResponse(
                          containedInkWell: true,
                          highlightShape: BoxShape.rectangle,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Istatistik(seconds, minutes, hours)));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(50.0),
                                child: Ink.image(
                                    width: 100,
                                    height: 100,
                                    image: const AssetImage(
                                        'assets/images/istatistik.jpg')),
                              ),
                              const Text(
                                'İstatistiklerim',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: InkResponse(
                          containedInkWell: true,
                          highlightShape: BoxShape.rectangle,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Kalangun()));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(50.0),
                                child: Ink.image(
                                    width: 100,
                                    height: 100,
                                    image: const AssetImage(
                                        'assets/images/kalangun.jpg')),
                              ),
                              const Text(
                                'Sınava Kaç Gün Var ?',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10)
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkResponse(
                          containedInkWell: true,
                          highlightShape: BoxShape.rectangle,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const IpucuView()));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(50.0),
                                child: Ink.image(
                                    width: 100,
                                    height: 100,
                                    image: const AssetImage(
                                        'assets/images/ipucu.jpg')),
                              ),
                              const Text(
                                'Günlük İpucu',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: InkResponse(
                          containedInkWell: true,
                          highlightShape: BoxShape.rectangle,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Sinavlar()));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(50.0),
                                child: Ink.image(
                                    width: 100,
                                    height: 100,
                                    image: const AssetImage(
                                        'assets/images/kalangun.jpg')),
                              ),
                              const Text(
                                'Geçmiş Sınavlar',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

