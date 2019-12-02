import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TestExample(),
    );
  }
}

class TestExample extends StatefulWidget {
  @override
  _TestExampleState createState() => _TestExampleState();
}

class _TestExampleState extends State<TestExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('判断你是调试还是发布模式'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('${getRunModel()}', style: TextStyle(fontSize: 24),)
          ],
        ),
      ),
    );
  }

  getRunModel() {
    if(kReleaseMode) {
      return '发布模式';
    } else {
      return '调试模式';
    }
  }
}

