import 'package:flutter/material.dart';
import '../constants/constants.dart';

class Kaydolwidget extends StatefulWidget {
  const Kaydolwidget({Key? key}) : super(key: key);

  @override
  State<Kaydolwidget> createState() => _KaydolwidgetState();
}

class _KaydolwidgetState extends State<Kaydolwidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Form(
              key: formKey1,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(fontSize: 16),
                      hintText: 'Adınız',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Bu alan boş bırakılamaz.';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(fontSize: 16),
                      hintText: 'Soyadınız',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Bu alan boş bırakılamaz.';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(fontSize: 16),
                      hintText: 'Mail adresiniz',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Bu alan boş bırakılamaz.';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(fontSize: 16),
                      hintText: 'Telefon numaranız',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Bu alan boş bırakılamaz.';
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        if (formKey1.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Kayıt işlemi başarılı.')),
                          );
                        }
                      },
                      child: const Text('Kayıt ol'),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
