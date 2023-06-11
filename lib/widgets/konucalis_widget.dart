import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../views/home/konucalis/konucalis_ea_view.dart';
import '../views/home/konucalis/konucalis_say_view.dart';
import '../views/home/konucalis/konucalis_soz_view.dart';
import '../views/home/konucalis/konucalis_tyt_view.dart';

class AytExpanded extends StatelessWidget {
  const AytExpanded({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: InkResponse(
              containedInkWell: true,
              highlightShape: BoxShape.rectangle,
              onTap: () async {
                final navigator = Navigator.of(context); //"Don't use 'BuildContext's across async gaps" uyarısını almamak için
                SharedPreferences prefs = await SharedPreferences.getInstance();
                bool switch1Value = prefs.getBool('switch1') ?? false;
                bool switch2Value = prefs.getBool('switch2') ?? false;
                bool switch3Value = prefs.getBool('switch3') ?? false;
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Alan seçimi için ayarlar menüsünü kullanabilirsiniz :)"),
                    ));
                if (switch1Value) {
                  navigator.push(
                    MaterialPageRoute(builder: (context) => const KonuCalisSay()),
                  );
                }
                if (switch2Value) {
                  navigator.push(
                    MaterialPageRoute(builder: (context) => const KonuCalisSoz()),
                  );
                }
                if (switch3Value) {
                  navigator.push(
                    MaterialPageRoute(builder: (context) => const KonuCalisEa()),
                  );
                }

              },
              onTapCancel: (){},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Ink.image(
                        width: 130,
                        height: 130,
                        image: const AssetImage('assets/images/ayt.jpg')
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TytExpanded extends StatelessWidget {
  const TytExpanded({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: InkResponse(
              containedInkWell: true,
              highlightShape: BoxShape.rectangle,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const KonuCalisTyt()));
              },
              onTapCancel: (){},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Ink.image(
                      width: 130,
                      height: 130,
                      image: const AssetImage('assets/images/tyt.jpg'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}