import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TestNetWork(),
    );
  }
}

class TestNetWork extends StatefulWidget {

  @override
  _TestNetWorkState createState() => _TestNetWorkState();
}

class _TestNetWorkState extends State<TestNetWork> {
  String headers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('测试网络加载报错'),
      ),
      body: Center(
        child: Container(
          color: Colors.grey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(headers, style: TextStyle(color: Colors.red, fontSize: 16),)
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    httpRequest();
  }

  void httpRequest() async {
    HttpClient client = new HttpClient();
    // tls 1.2 error
//  var request = await client.getUrl(Uri.parse('https://shop.io.mi-img.com/app/shop/img?id=shop_88f929c5731967cbc8339cfae1f5f0ec.jpeg'));
    // tls 1.3 normal
    var request = await client.getUrl(Uri.parse('https://ae01.alicdn.com/kf/Ud7cd28ffdf6e475c8dc382380d5d1976o.jpg'));
    var response = await request.close();
    headers = (response.headers.toString());
    print(headers);
    client.close(force: true);

    setState(() {

    });
  }
}

