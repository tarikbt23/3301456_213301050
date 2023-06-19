import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:studybuddy/service/firestore_hedef_service.dart';
import 'package:studybuddy/service/provider/auth_provider.dart';
import 'package:studybuddy/service/provider/hedef_provider.dart';
import 'package:studybuddy/views/auth/kayitol_view.dart';
import 'firebase_options.dart';
import 'locator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupLocator();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<AuthProvider>(
        create: (context) => locator.get<AuthProvider>(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider<FirestoreHedefService>(
            create: (_) => FirestoreHedefService(),
          ),
          ChangeNotifierProvider(create: (context) => HedefProvider()),
          StreamProvider(
            create: (context) =>
                context.read<FirestoreHedefService>().getHedef(),
            initialData: null,
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'StudyBuddy',
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.lightBlue[50],
            appBarTheme: AppBarTheme(
              foregroundColor: Colors.lightBlue[50],
              backgroundColor: Colors.purple,
            ),
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)
                .copyWith(error: Colors.red[900]),
          ),
          home: const MyHomePage(title: 'StudyBuddy Home Page'),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'StudyBuddy',
              style: GoogleFonts.kaushanScript(
                  textStyle:
                  const TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
            ),
          ),
        ),
        body: const Kaydol());
  }
}