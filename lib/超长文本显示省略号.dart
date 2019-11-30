import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TestText(),
    );
  }
}

class TestText extends StatefulWidget {
  @override
  _TestTextState createState() => _TestTextState();
}

class _TestTextState extends State<TestText> {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(color: Colors.red, fontSize: 20);
    return Scaffold(
      appBar: AppBar(
        title: Text('超长文本显示省略号'),
      ),
      body: Container(
        color: Colors.grey,
        child: Center(
          child:SizedBox(
            width: 150,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "This is a long text, use TextOverflow.ellipsis",
                  overflow: TextOverflow.ellipsis,
                  style: textStyle,
                ),

                Text(
                  "This is a long text, use TextOverflow.ellipsis",
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                  softWrap: false,
                  style: textStyle,
                ),

                Text(
                  "This is a long text",
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                  softWrap: false,
                  style: textStyle,
                ),

                Text(
                  "Introduction to Very very very long text",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}

