import 'package:flutter/material.dart';

// https://stackoverflow.com/questions/47423297/how-do-i-add-a-border-to-a-widget-in-flutter/47424036#47424036

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AddBorder(),
    );
  }
}

class AddBorder extends StatefulWidget {
  @override
  _AddBorderState createState() => _AddBorderState();
}

class _AddBorderState extends State<AddBorder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('添加边框'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Container(
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(3.0),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.blueAccent)),
              child: Text("My Awesome Border"),
            ),
            Container(
                margin: const EdgeInsets.all(5.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 10,
                    color: Colors.red,
                  ),
                ),
                child: Text(
                  "text",
                  style: TextStyle(fontSize: 30.0),
                )),
            Container(
                margin: const EdgeInsets.all(5.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    border: Border(
                  left: BorderSide(
                    //                   <--- left side
                    color: Colors.black,
                    width: 3.0,
                  ),
                  top: BorderSide(
                    //                    <--- top side
                    color: Colors.black,
                    width: 3.0,
                  ),
                  bottom: BorderSide(width: 13.0),
                )),
                child: Text(
                  "给指定的边添加边框",
                  style: TextStyle(fontSize: 30.0),
                )),
            Container(
                margin: const EdgeInsets.all(5.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    border: Border.all(width: 3.0),
                    borderRadius: BorderRadius.all(
                        Radius.circular(25.0) //                 <--- border radius here
                        )),
                child: Text(
                  "圆角边框",
                  style: TextStyle(fontSize: 20.0),
                )),
          ],
        ),
      ),
    );
  }
}
