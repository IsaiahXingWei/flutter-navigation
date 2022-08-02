import 'package:flutter/material.dart';
import 'package:navigation/shades_page.dart';
import 'package:navigation/shades_with_params.dart';
import 'home_page.dart';
import 'rgb.dart';

const accents = [100, 200, 400, 700];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
      routes: {
        '/shades': (context) => ShadesWithParams(),
        '/rgb': (context) => RGB(),
        '/home': (context) => MyHomePage(),
    },
    );
  }
}


