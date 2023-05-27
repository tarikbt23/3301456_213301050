import 'package:flutter/material.dart';

class TelNoTextFormField extends StatelessWidget {
  const TelNoTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
    );
  }
}

class MailTextFormField extends StatelessWidget {
  const MailTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
    );
  }
}

class SoyadTextFormField extends StatelessWidget {
  const SoyadTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
    );
  }
}

class AdTextFormField extends StatelessWidget {
  const AdTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
    );
  }
}

class KayitElevatedButton extends StatelessWidget {
  const KayitElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final formKey1 = GlobalKey<FormState>();
    return ElevatedButton(
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
    );
  }
}