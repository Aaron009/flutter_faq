import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TestList(),
    );
  }
}

class TestList extends StatefulWidget {
  @override
  _TestListState createState() => _TestListState();
}

class _TestListState extends State<TestList> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('测试滚动性能'),
      ),
      body: ListView.builder(
          itemCount: 1000,
          itemBuilder: (context, index) {
              return Stack(
                children: <Widget>[
//                  Image.network("https://dummyimage.com/"
//                      + size.width.toInt().toString() + "x200/"
//                      + toHex(randomColor(), leadingHashSign: false)+ "/fff"),

                  Container(
                    width: size.width.toInt().toDouble(),
                    height: 200,
                    color: randomColor(),
                    child: Text('测试文本', style: TextStyle(fontSize: 20, color: Colors.white),),
                  ),
                ],
              );
          }),
    );
  }

  Color randomColor() {
    return Color.fromARGB(255, Random().nextInt(256)+0, Random().nextInt(256)+0, Random().nextInt(256)+0);
  }

  String toHex(Color color, {bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${color.alpha.toRadixString(16)}'
      '${color.red.toRadixString(16)}'
      '${color.green.toRadixString(16)}'
      '${color.blue.toRadixString(16)}';
}