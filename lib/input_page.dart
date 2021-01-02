import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'result_page.dart';
import 'package:height_unit_app/calcultor.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int feet = 5;
  int inch = 0;

  // Function Res(result) {
  //   CalculatorBrain().calculateUnit();
  //   return Res(result);
  // }

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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin:
                      EdgeInsets.only(left: 0, top: 100, right: 0, bottom: 15),
                  padding: EdgeInsets.all(10),
                  color: Color(0xFF1D1E33), //Color(0xffe8f5e9),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Center(
                            child: Text(
                              feet.toString(),
                              style: TextStyle(
                                fontSize: 80,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Center(
                            child: Text(
                              'ft',
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          RawMaterialButton(
                            child: Icon(Icons.add),
                            onPressed: () {
                              setState(() {
                                if (feet < 7) {
                                  feet++;
                                } else {
                                  feet = feet;
                                }
                              });
                            },
                            //elevation: 6.0,
                            constraints: BoxConstraints.tightFor(
                              width: 56.0,
                              height: 56.0,
                            ),
                            shape: CircleBorder(),
                            fillColor: Color(0xff4c4f5e), //Color(0xffe8f5e9),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RawMaterialButton(
                            child: Icon(Icons.remove),
                            onPressed: () {
                              setState(() {
                                if (feet > 4) {
                                  feet--;
                                } else {
                                  feet = feet;
                                }
                              });
                            },
                            //elevation: 6.0,
                            constraints: BoxConstraints.tightFor(
                              width: 56.0,
                              height: 56.0,
                            ),
                            shape: CircleBorder(),
                            fillColor: Color(0xff4c4f5e), //Color(0xffe8f5e9),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 0, right: 0, top: 100, bottom: 15),
                  padding: EdgeInsets.all(15),
                  color: Color(0xFF1D1E33), //Color(0xffe8f5e9),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Center(
                            child: Text(
                              inch.toString(),
                              style: TextStyle(
                                fontSize: 80,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Center(
                            child: Text(
                              'in',
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          RawMaterialButton(
                            child: Icon(Icons.add),
                            onPressed: () {
                              setState(() {
                                if (inch < 12) {
                                  inch++;
                                } else {
                                  inch = inch;
                                }
                              });
                            },
                            //elevation: 6.0,
                            constraints: BoxConstraints.tightFor(
                              width: 56.0,
                              height: 56.0,
                            ),
                            shape: CircleBorder(),
                            fillColor: Color(0xff4c4f5e), //Color(0xffe8f5e9),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RawMaterialButton(
                            child: Icon(Icons.remove),
                            onPressed: () {
                              setState(() {
                                if (inch > 0) {
                                  inch--;
                                } else {
                                  inch = inch;
                                }
                              });
                            },
                            //elevation: 6.0,
                            constraints: BoxConstraints.tightFor(
                              width: 56.0,
                              height: 56.0,
                            ),
                            shape: CircleBorder(),
                            fillColor: Color(0xff4c4f5e), //Color(0xffe8f5e9),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              CalculatorBrain cal = CalculatorBrain(feet: feet, inch: inch);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    unitResult: cal.calculateUnit(),
                  ),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.only(bottom: 30),
              height: 100,
              width: double.infinity,
              color: Colors.pink[900], //Color(0xffe8f5e9),
              child: Center(
                child: Text(
                  'CONVERT',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
