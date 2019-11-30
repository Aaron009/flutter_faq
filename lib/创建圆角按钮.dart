import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('创建各种各样按钮'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.red)),
                    color: Colors.white,
                    textColor: Colors.red,
                    padding: EdgeInsets.all(8.0),
                    onPressed: () {},
                    child: Text(
                      "Add to Cart".toUpperCase(),
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  RaisedButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.red)),
                    onPressed: () {},
                    color: Colors.red,
                    textColor: Colors.white,
                    child: Text("Buy now".toUpperCase(),
                        style: TextStyle(fontSize: 14)),
                  ),
                ],
              ),



              RaisedButton(
                textColor: Colors.white,
                color: Colors.red,
                child: Text("Search"),
                onPressed: () {},
                shape: new RoundedRectangleBorder(
                  side: BorderSide(color: Colors.red),
                  borderRadius: new BorderRadius.circular(30.0),
                ),
              ),

              RaisedButton(
                  textColor: Colors.white,
                  color: Colors.red,
                  child: Text("Search"),
                  onPressed: null, // 当onPressed为null，按钮自动变为灰色
                  shape: new RoundedRectangleBorder(
//                      side: BorderSide(color: Colors.red),
                      borderRadius: new BorderRadius.circular(30.0)),
                  ),

              // 使用InkWell自定义按钮样式
              // 如果需要有按下水波，需要parent有Material
              new InkWell(
                onTap: () => print('hello'),
                onDoubleTap: () => print('double tap'),
                onLongPress: () => print('onLongPress'),
                child: new Container(
                  width: 100.0,
                  height: 50.0,
                  decoration: new BoxDecoration(
                    color: Colors.blueAccent,
                    border: new Border.all(color: Colors.white, width: 2.0),
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  child: new Center(child: new Text('Click Me', style: new TextStyle(fontSize: 18.0, color: Colors.white),),),
                ),
              ),

              RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                onPressed: () {},
                child: Text("Button"),
              ),

              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: RaisedButton(
                  onPressed: () {},
                  child: Text("Button"),
                ),
              ),

              ClipOval(
                child: RaisedButton(
                  onPressed: () {},
                  child: Text("Button"),
                ),
              ),

              ButtonTheme(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: RaisedButton(
                  onPressed: () {},
                  child: Text("Button"),
                ),
              ),

              RaisedButton(
                shape: StadiumBorder(),
                onPressed: () {},
                child: Text("Button"),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
