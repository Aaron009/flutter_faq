import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePageState createState() => new MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('关闭键盘显示'),
      ),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.send),
        onPressed: () {
          setState(() {
            // 情况输入内容
            _controller.clear();
          });
        },
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        alignment: FractionalOffset.center,
        padding: new EdgeInsets.all(20.0),
        child: new TextFormField(
          controller: _controller,
          decoration: new InputDecoration(labelText: 'Example Text'),
        ),
      ),
    );
  }
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: new MaterialApp(
        home: new MyHomePage(),
      ),
    );
  }
}

void main() {
  runApp(new MainApp());
}
