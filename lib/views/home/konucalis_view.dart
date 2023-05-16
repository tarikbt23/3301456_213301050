import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../widgets/konucalis_widget.dart';

class KonuCalis extends StatefulWidget {
  const KonuCalis({Key? key}) : super(key: key);

  @override
  State<KonuCalis> createState() => _KonuCalisState();
}

class _KonuCalisState extends State<KonuCalis> {

  Future<Map<String, bool>> getSwitchValues() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool switch1Value = prefs.getBool('switch1') ?? false;
    bool switch2Value = prefs.getBool('switch2') ?? false;
    bool switch3Value = prefs.getBool('switch3') ?? false;

    return {'switch1': switch1Value, 'switch2': switch2Value, 'switch3': switch3Value};
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Konu Çalış',
          style: GoogleFonts.courgette(),
        ),
      ),
      body: Center(
        child: Column(
          children: const [
            TytExpanded(),
            AytExpanded(),
          ],
        ),
      ),
    );
  }
}
