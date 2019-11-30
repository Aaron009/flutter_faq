import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String imageURL = "https://via.placeholder.com/800x600";
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('给图片添加圆角'),
        ),
        body: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Container(
              margin: EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 100.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      color: Colors.redAccent,
                    ),
                    child: new ClipRRect(
                      borderRadius: new BorderRadius.circular(8.0),
                      child: Image.network(
                        imageURL,
                        fit: BoxFit.fill,
                        height: 150.0,
                        width: 100.0,
                      ),
                    ),
                  ),

                  ClipOval(
                    child: Image.network(
                      imageURL,
                      height: 150,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
