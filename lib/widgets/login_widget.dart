import 'package:flutter/material.dart';
import '../views/home/anaEkran_view.dart';
import '../views/auth/kayitol_view.dart';

class LoginFlexible extends StatelessWidget {
  const LoginFlexible({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final formKey2 = GlobalKey<FormState>();
    return Flexible(
      flex: 1,
      child: Form(
        key: formKey2,
        child: Column(
          children: [
            const UserNameTextFormField(),
            const SizedBox(height: 25,),
            const PasswordTextFormField(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: RegisterElevatedButton(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: LoginElevatedButton(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: ForgotPasswordElevatedButton(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ForgotPasswordElevatedButton extends StatelessWidget {
  const ForgotPasswordElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      ),
      onPressed: () {null;},
      child: const Text('Şifremi unuttum'),
    );
  }
}

class LoginElevatedButton extends StatelessWidget {
  const LoginElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final formKey2 = GlobalKey<FormState>();
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      ),
      onPressed: () {
        if (formKey2.currentState!.validate()) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const AnaEkran()));
        }
      },
      child: const Text('Giriş yap'),
    );
  }
}

class RegisterElevatedButton extends StatelessWidget {
  const RegisterElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      ),
      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Kaydol()));},
      child: const Text('Üye ol'),
    );
  }
}

class PasswordTextFormField extends StatelessWidget {
  const PasswordTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
    );
  }
}

class UserNameTextFormField extends StatelessWidget {
  const UserNameTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
    );
  }
}

class LogoFlexible extends StatelessWidget {
  const LogoFlexible({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
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
    );
  }
}