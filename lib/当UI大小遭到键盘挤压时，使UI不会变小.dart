import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Test(),
    );
  }
}

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('当UI大小遭到键盘挤压时，使UI不会变小'),
      ),
      resizeToAvoidBottomInset: false,  // 这里可以防止因键盘导致UI变小，但是后果也有可能导致遮住输入框。
      body: Container(
        color: Colors.grey,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new Expanded(
              flex: 1,
              child: Container(color: Colors.red,),
            ),
            new Expanded(
              flex: 1,
              child: Container(color: Colors.yellow,),
            ),
            new Expanded(
              flex: 1,
              child: Container(color: Colors.blue,child: TextFormField(
                decoration: new InputDecoration(labelText: '尝试输入文本'),
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
