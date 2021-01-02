import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String unitResult;
  ResultPage({this.unitResult});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HEIGHT CONVERTER',
          //style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(30, 15, 30, 15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Result',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.fromLTRB(30, 15, 30, 15),
              color: Color(0xFF1D1E33), //Color(0xffe8f5e9),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    unitResult,
                    style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'cm',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.only(bottom: 30),
              height: 100,
              width: double.infinity,
              color: Colors.pink[900], //Color(0xffe8f5e9),
              child: Center(
                child: Text(
                  'RE-CONVERT',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
