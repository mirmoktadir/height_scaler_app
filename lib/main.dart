import 'package:flutter/material.dart';
import 'input_page.dart';
import 'result_page.dart';

void main() {
  runApp(HeightUnitApp());
}

class HeightUnitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xff0a0e21), //Color(0xffe8f5e9),
          scaffoldBackgroundColor: Color(0xFF0A0E21) //Color(0xffD7FFFF),
          ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/second': (context) => ResultPage(),
      },
    );
  }
}
