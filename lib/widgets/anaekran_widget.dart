import 'package:flutter/material.dart';
import 'package:studybuddy/views/home/kitap_view.dart';
import 'package:studybuddy/views/menu/uygulama_hakkinda_view.dart';
import '../views/home/denemeanaliz_view.dart';
import '../views/home/hedef_view.dart';
import '../views/home/ipucu_view.dart';
import '../views/home/istatistik_view.dart';
import '../views/home/kalangun_view.dart';
import '../views/home/konucalis_view.dart';
import '../views/menu/ayarlar_view.dart';
import '../views/menu/hakkimizda_view.dart';
import '../views/menu/iletisim_view.dart';
import '../views/home/notlarim.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.lightBlue[50],
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.purple,
            ),
            child: Center(
              child: Text(
                'MENÜ',
                style: TextStyle(
                  color: Colors.lightBlue[50],
                  fontSize: 24,
                ),
              ),
            ),
          ),
          ListTile(
            title: Text('Ayarlar'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Ayarlar()));
            },
          ),
          ListTile(
            title: Text('İletişim'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Iletisim()));
            },
          ),
          ListTile(
            title: Text('Geliştirici Hakkında'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Hakkimizda()));
            },
          ),
          ListTile(
            title: Text('Uygulama Hakkında'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const UygulamaHakkinda()));
            },
          ),
        ],
      ),
    );
  }
}

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
                KitapExpanded(),
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
                  builder: (context) => Hedeflerim()));
        },
        onTapCancel: (){},
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
              'Hedeflerim',
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
                  Istatistik()));
        },
        onTapCancel: (){},
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
        onTapCancel: (){},
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
        onTapCancel: (){},
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
              'Deneme Analizi',
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

class KitapExpanded extends StatelessWidget {
  const KitapExpanded({
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
                  builder: (context) => const Kitapp()));
        },
        onTapCancel: (){},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Ink.image(
                  width: 100,
                  height: 100,
                  image: const AssetImage(
                      'assets/images/kitap.jpg')),
            ),
            const Text(
              'Kitap Önerileri',
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
                  builder: (context) => const Notlarim()));
        },
        onTapCancel: (){},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Ink.image(
                  width: 100,
                  height: 100,
                  image: const AssetImage(
                      'assets/images/notlarim.jpg')),
            ),
            const Text(
              'Notlarım',
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
        onTapCancel: (){},
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
        onTapCancel: (){},
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

