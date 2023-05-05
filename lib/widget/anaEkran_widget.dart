import 'package:flutter/material.dart';
import 'package:studybuddy/widget/kalangun.dart';
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
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (dragUpdateDetails) {
        if (dragUpdateDetails.delta.dx > 0) {
          // sağa kaydırma işlemi
          _pageController.previousPage(
              duration: Duration(milliseconds: 500), curve: Curves.ease);
        } else if (dragUpdateDetails.delta.dx < 0) {
          // sola kaydırma işlemi
          _pageController.nextPage(
              duration: Duration(milliseconds: 500), curve: Curves.ease);
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
                                    builder: (context) => Hedeflerim()));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(50.0),
                                child: Ink.image(
                                    width: 100,
                                    height: 100,
                                    image: const NetworkImage(
                                        'https://media.istockphoto.com/id/1369010141/vector/%C3%B0%C3%B1%C3%B0%C3%B0%C3%B0%C3%B0%C3%B1%C3%B0%C2%B5-rgb.jpg?s=612x612&w=0&k=20&c=CfT7y0Wo0dnEf6dWZ3QdM6X3M2S8_iAcR0_CCT7kPGE=')),
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
                                    builder: (context) => DenemeAnaliz()));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(50.0),
                                child: Ink.image(
                                    width: 100,
                                    height: 100,
                                    image: const NetworkImage(
                                        'https://media.istockphoto.com/id/839310238/tr/vekt%C3%B6r/%C3%A7alar-saat.jpg?s=1024x1024&w=is&k=20&c=womFe_sLR1g6DadMpi7wLWGFya32dPXhJO6YNJafcIg=')),
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
                                    builder: (context) => KonuCalis()));
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
                                    image: const NetworkImage(
                                        'https://static.vecteezy.com/system/resources/previews/007/505/068/original/cartoon-illustration-of-girl-studying-online-from-home-vector.jpg')),
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
                                    image: const NetworkImage(
                                        'https://thumbs.dreamstime.com/b/businessman-looking-complicated-statistics-38277758.jpg')),
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
                                    builder: (context) => Kalangun()));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(50.0),
                                child: Ink.image(
                                    width: 100,
                                    height: 100,
                                    image: const NetworkImage(
                                        'https://media.istockphoto.com/id/1284999664/tr/vekt%C3%B6r/simge-sayfa-takvimi-zamanlama-son-tarih-tarih-uygulama.jpg?s=612x612&w=0&k=20&c=uVz26fuvtMUeJ1RylNb2A0rmeYeXI-DqyVddmZ2hwCI=')),
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
                                    builder: (context) => DenemeAnaliz()));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(50.0),
                                child: Ink.image(
                                    width: 100,
                                    height: 100,
                                    image: const NetworkImage(
                                        'https://media.istockphoto.com/id/1132400438/vector/lit-electric-light-bulb-illustration-isolated-on-white-background-vector.jpg?s=612x612&w=0&k=20&c=E-yiyby7q9nB2NeEHkgwuBrw5kqqwbAQiJV5YnQrmK8=')),
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
              ],
            ),
          )
        ],
      ),
    );
  }
}

