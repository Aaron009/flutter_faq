import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Percent(),
    );
  }
}

class Percent extends StatefulWidget {
  @override
  _PercentState createState() => _PercentState();
}

class _PercentState extends State<Percent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('百分比显示组件'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              height: 100,
              color: Colors.green,
            ),

            FractionallySizedBox(
              widthFactor: 0.65,
              child: Container(
                color: Colors.blue,
                height: 100,
              ),
            ),

            Row(
              children: <Widget>[
                Expanded(
                  flex: 7,
                  child: Container(
                    height: 100,
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 100,
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
