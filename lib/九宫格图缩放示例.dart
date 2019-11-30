import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CenterSliceExample(),
    );
  }
}

class CenterSliceExample extends StatefulWidget {
  @override
  _CenterSliceExampleState createState() => _CenterSliceExampleState();
}

class _CenterSliceExampleState extends State<CenterSliceExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('九宫格图缩放'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Container(
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: new NetworkImage('https://i.postimg.cc/yxxcgDX5/img-7.png'),
                      centerSlice: new Rect.fromLTWH(23.0, 12.0, 23.0, 12.0),
                      fit: BoxFit.fill,
                    )
                ),
                child: new Container(
                  //color: Colors.yellow,
                  width: 343.0,
                  height: 137.0,
                  child: Center(child:Text("343X137",style: TextStyle(fontSize: 30),)),
                )
            ),

            new Container(
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: new NetworkImage('https://i.postimg.cc/yxxcgDX5/img-7.png'),
                      centerSlice: new Rect.fromLTWH(23.0, 12.0, 23.0, 12.0),
                      fit: BoxFit.fill,
                    )
                ),
                child: new Container(
                  //color: Colors.yellow,
                  width: 300.0,
                  height: 300.0,
                  child: Center(child:Text("100X300",style: TextStyle(fontSize: 30),)),
                )
            ),
          ],
        ),
      ),
    );
  }
}

