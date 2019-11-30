import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/until/StringConst.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FrostedDemo(),
    );
  }
}

class FrostedDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(

        children: <Widget>[
          new ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: Image.network(
              StringConst.mobile_background,
              fit: BoxFit.cover,
            ),
          ),

          SizedBox.expand(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new ClipRect(
                  child: new BackdropFilter(
                    filter: new ImageFilter.blur(sigmaX: 1.9, sigmaY: 1.9),
                    child: new Container(
                      width: 200.0,
                      height: 200.0,
                      decoration: new BoxDecoration(
                          color: Colors.grey.shade200.withOpacity(0.5)),
                      child: new Center(
                        child: new Text('Frosted',
                            style: Theme.of(context).textTheme.display3),
                      ),
                    ),
                  ),
                ),

                ClipRect(
                  child: new BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                    child: new Container(
                      margin: EdgeInsets.all(100),
                      //you can change opacity with color here(I used black) for background.
                      decoration: new BoxDecoration(color: Colors.black.withOpacity(0.2)),
                      child: new Center(
                        child: new Text('Frosted',
                            style: Theme.of(context).textTheme.display3),
                      ),
                    ),
                  ),
                ),

                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 10.0),
                  padding: const EdgeInsets.all(15.0),
                  decoration: new BoxDecoration(
                    //you can get rid of below line also
                    borderRadius: new BorderRadius.circular(10.0),
                    //below line is for rectangular shape
                    shape: BoxShape.rectangle,
                    //you can change opacity with color here(I used black) for rect
                    color: Colors.black.withOpacity(0.4),
                    //I added some shadow, but you can remove boxShadow also.
                    boxShadow: <BoxShadow>[
                      new BoxShadow(
                        color: Colors.black26,
                        blurRadius: 5.0,
                        offset: new Offset(5.0, 5.0),
                      ),
                    ],
                  ),
                  child: new Column(
                    children: <Widget>[
                      new Text(
                        'There\'s only one corner of the universe you can be certain of improving and that\'s your own self.',
                        style: new TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
