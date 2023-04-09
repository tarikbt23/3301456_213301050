import 'package:flutter/material.dart';
import '../pages/home/anaekran.dart';
import '../pages/auth/kayitol.dart';
import '../constants/constants.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 80),
                    Image.asset(
                      'assets/images/logoo.jpg',
                      scale: 4.5,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Form(
              key: formKey2,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(fontSize: 16),
                      hintText: 'Kullanıcı adınızı girin (tebete23)',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Bu alan boş bırakılamaz.';
                      }
                      if (value != 'tebete23') {
                        return 'Kullanıcı adı yanlış !';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 25,),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(fontSize: 16),
                      hintText: 'Şifrenizi girin (12345)',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Bu alan boş bırakılamaz.';
                      }
                      if (value != '12345') {
                        return 'Şifre yanlış !';
                      }
                      return null;
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                          ),
                          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Kaydol()));},
                          child: const Text('Üye ol'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                          ),
                          onPressed: () {
                            if (formKey2.currentState!.validate()) {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => AnaEkran()));
                            }
                          },
                          child: const Text('Giriş yap'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                          ),
                          onPressed: () {null;},
                          child: const Text('Şifremi unuttum'),
                        ),
                      ),
                    ],
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
