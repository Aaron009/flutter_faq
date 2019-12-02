import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(new MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new HomePage(),
      theme: new ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Container(
          padding: const EdgeInsets.all(40.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(labelText: "Enter your number"),
                keyboardType: TextInputType.number, // 弹出数字键盘
                inputFormatters: <TextInputFormatter>[
                  WhitelistingTextInputFormatter.digitsOnly // 限制只能输入数字
                ],
              ),
            ],
          )),
    );
  }
}