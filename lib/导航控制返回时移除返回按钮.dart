import 'package:flutter/material.dart';

class LogoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Logout Page"),
      ),
      body: new Center(
        child: new Text('You have been logged out'),
      ),
    );
  }

}
class FirstPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Remove Back Button"),
      ),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.fullscreen_exit),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
        },
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("SecondPage"),
      ),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.fullscreen_exit),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdPage()));
        },
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Third Page'),),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.language),
        onPressed: () {
//          Navigator.pushReplacementNamed(context, "/logout"); //替换上一个

          Navigator.pushNamedAndRemoveUntil(context, '/logout', (Route <dynamic> route) {
            print(route);
            return false;
          });

//          Navigator.pushNamedAndRemoveUntil(context, '/logout', ModalRoute.withName('xx'));
        }
      ),
    );
  }
}


void main() {
  runApp(new MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new FirstPage(),
      routes: {
        "/logout": (_) => new LogoutPage(),
      },
    );
  }
}