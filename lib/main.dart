import 'package:exam_ui/pages/addPage.dart';
import 'package:exam_ui/pages/contactPage.dart';
import 'package:exam_ui/pages/home.dart';
import 'package:exam_ui/pages/profilePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => First(),
        '/add': (context) => AddPage(),
        '/contact': (context) => ContactPage(),
        // '/profile': (context) => Profile(),
      },
      initialRoute: '/',
    );
  }
}
