import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:studybuddy/views/home/anaEkran_view.dart';
import '../../locator.dart';
import '../../service/auth_service.dart';
import '../../utils/helper_functions.dart';
import 'animations/change_screen_animation.dart';
import 'bottom_text.dart';

enum Screens {
  signUp,
  signIn,
}

class Kaydol extends StatefulWidget {
  const Kaydol({Key? key}) : super(key: key);

  @override
  State<Kaydol> createState() => _KaydolState();
}

class _KaydolState extends State<Kaydol>
    with TickerProviderStateMixin {
  late final List<Widget> createAccountContent;
  late final List<Widget> loginContent;

  final _tName = TextEditingController();
  final _tEmail = TextEditingController();
  final _tPassword = TextEditingController();

  Widget inputField(TextEditingController controller, String hint, IconData iconData) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
      child: SizedBox(
        height: 50,
        child: Material(
          elevation: 8,
          shadowColor: Colors.black87,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          child: TextField(
            controller: controller,
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: hint,
              prefixIcon: Icon(iconData),
            ),
          ),
        ),
      ),
    );
  }

  Widget actionButton(String title, {Function()? onTap}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 135, vertical: 16),
      child: ElevatedButton(
        onPressed: () {
          if (onTap != null) {
            onTap();
          }
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14), backgroundColor: Colors.purple,
          shape: const StadiumBorder(),
          elevation: 8,
          shadowColor: Colors.black87,
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget orDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 8),
      child: Row(
        children: [
          Flexible(
            child: Container(
              height: 1,
              color: Colors.purple,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'ya da',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Flexible(
            child: Container(
              height: 1,
              color: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }

  Widget logos() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
              onTap: () async{
                locator.get<AuthService>().signInWithGoogle().then((value) => Navigator.of(context).push(MaterialPageRoute(builder: (context) => AnaEkran(), settings: RouteSettings(arguments: value))));
              },
              child: Image.asset('assets/images/google.png')),
        ],
      ),
    );
  }


  @override
  void initState() {
    createAccountContent = [
      inputField(_tName, 'İsim', Icons.person),
      inputField(_tEmail, 'Email', Icons.mail),
      inputField(_tPassword, 'Şifre', Icons.password),
      actionButton('Kayıt Ol', onTap: () => locator.get<AuthService>().signUp(context, name: _tName.text, email: _tEmail.text, password: _tPassword.text),),
      orDivider(),
      logos(),
    ];

    loginContent = [
      inputField(_tEmail, 'Email', Icons.mail),
      inputField(_tPassword, 'Şifre', Icons.password),
      actionButton('Giriş Yap', onTap: () => locator.get<AuthService>().signIn(context, email: _tEmail.text, password: _tPassword.text),),
    ];

    ChangeScreenAnimation.initialize(
      vsync: this,
      createAccountItems: createAccountContent.length,
      loginItems: loginContent.length,
    );

    for (var i = 0; i < createAccountContent.length; i++) {
      createAccountContent[i] = HelperFunctions.wrapWithAnimatedBuilder(
        animation: ChangeScreenAnimation.createAccountAnimations[i],
        child: createAccountContent[i],
      );
    }

    for (var i = 0; i < loginContent.length; i++) {
      loginContent[i] = HelperFunctions.wrapWithAnimatedBuilder(
        animation: ChangeScreenAnimation.loginAnimations[i],
        child: loginContent[i],
      );
    }

    super.initState();
  }

  @override
  void dispose() {
    ChangeScreenAnimation.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Stack(
            children: [
              Container(
                child: Lottie.network("https://assets10.lottiefiles.com/packages/lf20_w6y7r1ap.json"),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: createAccountContent,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: loginContent,
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: BottomText(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
