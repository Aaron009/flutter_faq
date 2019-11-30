import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>(); // 通过Key获取到组件

  Home({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,

      appBar: AppBar(
        title: const Text('Snack bar'),
      ),

      /// We use [Builder] here to use a [context] that is a descendant of [Scaffold]
      /// or else [Scaffold.of] will return null
      body: Builder(builder: (context) =>
         Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            RaisedButton(
              child: const Text('Show toast'),
              onPressed: () => _showToast(context),
            ),

            RaisedButton(
              child: const Text('Show toast Use plugin Fluttertoast'),
              onPressed: () => Fluttertoast.showToast(
                  msg: "This is Toast messaget",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIos: 1
              ),
            ),

            RaisedButton(
              color: Colors.pink,
              textColor: Colors.white,
              onPressed: () => _displaySnackBar(context),
              child: Text('通过Globay Key获取到Scaffold'),
            ),
          ],
        )
      )
    );
  }

  void _showToast(BuildContext context) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Added to favorite'),
        action: SnackBarAction(
            label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

  _displaySnackBar(BuildContext context) {
    final scaffold = _scaffoldKey.currentState;
    final snackBar = SnackBar(content: Text('Are you talkin\' to me?'));
    scaffold.showSnackBar(snackBar);
  }
}