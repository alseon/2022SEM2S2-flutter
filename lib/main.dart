import 'package:calculadora/page/home.page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      theme: ThemeData(
       
        primarySwatch: Colors.blueGrey,
      ),
      home: HomePage(),
    );
  }
}

