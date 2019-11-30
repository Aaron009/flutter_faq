import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/until/StringConst.dart';

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
    String loadURL = StringConst.mobile_background;
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
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text("Hello background",style: TextStyle(color: Colors.green, fontSize: 50),),
                ],
              ),
            )
          ],
        ));
  }
}
