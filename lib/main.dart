import 'package:flutter/material.dart';
import 'widget/login_widget.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    );
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
              style: GoogleFonts.kaushanScript(textStyle: TextStyle(fontSize: 35 , fontWeight: FontWeight.bold)),
            ),
          ),
        ),
        body: Login()
    );
  }
}
