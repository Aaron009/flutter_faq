import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UnderLineTextFiled(),
    );
  }
}

class UnderLineTextFiled extends StatefulWidget {
  @override
  _UnderLineTextFiledState createState() => _UnderLineTextFiledState();
}

class _UnderLineTextFiledState extends State<UnderLineTextFiled> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField装饰'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.all(Radius.circular(32)),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 17),
                  hintText: 'Search your trips',
                  suffixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(20),
                ),
              ),
            ),

            TextFormField(
              cursorColor: Colors.black,
              keyboardType: TextInputType.text,
              decoration: new InputDecoration(
                  filled: true,
                  fillColor: Colors.grey,
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding:
                  EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                  hintText: '测试文本'),
            ),
          ],
        ),
      ),
    );
  }
}

