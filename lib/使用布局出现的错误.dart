import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}


class MainApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Login / Signup"),
        ),
        body: new Container(
          child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new TextField(
                  decoration: new InputDecoration(
                      hintText: "E M A I L    A D D R E S S"
                  ),
                ),
                new Padding(padding: new EdgeInsets.all(15.00)),
                new TextField(obscureText: true,
                  decoration: new InputDecoration(
                      hintText: "P A S S W O R D"
                  ),
                ),
                new Padding(padding: new EdgeInsets.all(15.00)),
                new TextField(decoration: new InputDecoration(
                    hintText: "U S E R N A M E"
                ),),
                new RaisedButton(onPressed: null,
                  child:  new Text("SIGNUP"),),
                new Padding(padding: new EdgeInsets.all(15.00)),
                new RaisedButton(onPressed: null,
                  child: new Text("LOGIN"),),
                new Padding(padding: new EdgeInsets.all(15.00)),
                SizedBox(
                  height: 30,
                  child: new ListView( // Column里不能直接使用ListView，需要限定高度
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      new RaisedButton(onPressed: null,
                        child: new Text("Facebook"),),
                      new Padding(padding: new EdgeInsets.all(5.00)),
                      new RaisedButton(onPressed: null,
                        child: new Text("Google"),)
                    ],
                  ),
                ),
              ],
            ),
          ),
          margin: new EdgeInsets.all(15.00),
        ),
      ),
    );
  }
}