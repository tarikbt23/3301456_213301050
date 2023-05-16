import 'package:flutter/material.dart';
import '../views/home/denemeanaliz_view.dart';
import '../views/home/hedef_view.dart';
import '../views/home/ipucu_view.dart';
import '../views/home/istatistik_view.dart';
import '../views/home/kalangun_view.dart';
import '../views/home/konucalis_view.dart';
import '../views/sinavlar.dart';

class Sayfa1Widget extends StatelessWidget {
  const Sayfa1Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HedeflerimExpanded(),
                DenemeAnalizExpanded(),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                KonuCalisExpanded(),
                IstatistikExpanded(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Sayfa2Widget extends StatelessWidget {
  const Sayfa2Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                KalanGunExpanded(),
                IpucuExpanded(),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SinavlarExpanded(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HedeflerimExpanded extends StatelessWidget {
  const HedeflerimExpanded({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}

class IstatistikExpanded extends StatelessWidget {
  const IstatistikExpanded({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkResponse(
        containedInkWell: true,
        highlightShape: BoxShape.rectangle,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                  const Istatistik()));
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
    );
  }
}

class KonuCalisExpanded extends StatelessWidget {
  const KonuCalisExpanded({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}

class DenemeAnalizExpanded extends StatelessWidget {
  const DenemeAnalizExpanded({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}

class SinavlarExpanded extends StatelessWidget {
  const SinavlarExpanded({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}

class IpucuExpanded extends StatelessWidget {
  const IpucuExpanded({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}

class KalanGunExpanded extends StatelessWidget {
  const KalanGunExpanded({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}

