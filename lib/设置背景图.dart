import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SetBackgroundImage(),
    );
  }
}

class SetBackgroundImage extends StatefulWidget {
  @override
  _SetBackgroundImageState createState() => _SetBackgroundImageState();
}

class _SetBackgroundImageState extends State<SetBackgroundImage> {
  @override
  Widget build(BuildContext context) {
    String loadURL = "https://cdn5.vectorstock.com/i/1000x1000/86/34/abstract-dark-mobile-phone-backgrounds-with-flower-vector-9228634.jpg";
    return Scaffold(
        appBar: AppBar(
          title: Text('添加背景图'),
        ),
        body: new Stack(
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: NetworkImage(loadURL),
                  fit: BoxFit.fill,
                ),
              ),
              width: double.infinity,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text("Hello background",style: TextStyle(color: Colors.green, fontSize: 50),),
              ],
            ),
          ],
        ));
  }
}
