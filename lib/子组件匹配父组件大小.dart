import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TestMatchPrent(),
    );
  }
}

class TestMatchPrent extends StatefulWidget {
  @override
  _TestMatchPrentState createState() => _TestMatchPrentState();
}

class _TestMatchPrentState extends State<TestMatchPrent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('子组件匹配父组件'),
      ),
      body: Visibility(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(0.0),
              margin: EdgeInsets.all(0),
              child: new RaisedButton(
                padding: EdgeInsets.all(0),
                child: new Text(
                    "Submit",
                    style: new TextStyle(
                      color: Colors.white,
                    )
                ),
                colorBrightness: Brightness.dark,
                onPressed: () {
//                  _loginAttempt(context);
                },
                color: Colors.blue,
              ),
            ),

            Container(
              color: Colors.transparent,
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: FlatButton(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                onPressed: () {},
                color: Colors.red[300],
                child: Text(
                  "Button",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Raleway',
                    fontSize: 22.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

