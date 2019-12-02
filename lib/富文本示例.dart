import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RichTextExample(),
    );
  }
}

class RichTextExample extends StatefulWidget {
  @override
  _RichTextExampleState createState() => _RichTextExampleState();
}

class _RichTextExampleState extends State<RichTextExample> {
  LongPressGestureRecognizer _longPressRecognizer;

  @override
  void initState() {
    super.initState();
    _longPressRecognizer = LongPressGestureRecognizer()
      ..onLongPress = () {
          print('长按');
      };
  }

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('富文本使用示例'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            RichText(
              text: new TextSpan(
                // Note: Styles for TextSpans must be explicitly defined.
                // Child text spans will inherit styles from parent
                style: new TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  new TextSpan(text: 'Hello '),
                  new TextSpan(
                      text: 'World',
                      style: new TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Can you ',
                style: TextStyle(color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: 'find the',
                    style: TextStyle(
                      color: Colors.green,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                    recognizer: _longPressRecognizer,
                  ),
                  TextSpan(text: 'secret?'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
