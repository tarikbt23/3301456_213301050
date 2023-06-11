import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'calisilan_sure_view.dart';

class Kronometrewidget extends StatefulWidget {
  const Kronometrewidget({Key? key}) : super(key: key);

  @override
  State<Kronometrewidget> createState() => _KronometrewidgetState();
}

class _KronometrewidgetState extends State<Kronometrewidget> {
  bool isActive = false;
  int seconds = 0;
  int minutes = 0;
  int hours = 0;

  late Timer _timer;  //Değişkeni henüz initialize etmedik ama daha sonradan edeceğimiz için late kullandık.

  void _toggleTimer() {  //Bu methodu kullanıcının butonlara tıklamasına göre sayaç durumunu değiştirmek için kullanıyoruz.
    setState(() {
      isActive = !isActive;
      if (isActive) {
        _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
          setState(() {  //setState methodu içindeki nesnenin durumunun değişken olduğunu derleyiciye belirtir.
            seconds++;
            if(seconds == 59){
              minutes++;
              seconds = 0;
            }
            if(minutes == 59){
              hours++;
              minutes = 0;
            }
          });
        });
      } else {
        _timer.cancel();
      }
    });
  }

  void _resetTimer() {
    setState(() {
      seconds = 0;
      minutes = 0;
      hours = 0;
      isActive = false;
      _timer.cancel();
    });
  }

  void _saveTime() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CalisilanSure(seconds,minutes,hours)),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }


  String get timerText {
    Duration duration = Duration(seconds: seconds);
    return '${duration.inHours}:${duration.inMinutes}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
    //padLeft ile saniyeyi sola 2 kaydırma ile başlatıyoruz. Saniye 10 olana kadar yani taşma yaşanana kadar birinci haneye
    //0 koymuş oluyoruz.
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              timerText,
              style: const TextStyle(fontSize: 80.0),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _toggleTimer,
                  child: Text(isActive ? 'Durdur' : 'Başlat'),
                ),
                const SizedBox(width: 20.0),
                ElevatedButton(
                  onPressed: _resetTimer,
                  child: const Text('Sıfırla'),
                ),
                const SizedBox(width: 20.0),
                ElevatedButton(
                  onPressed: _saveTime,
                  child: const Text('Kaydet'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
