import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CheckPlatform(),
    );
  }
}

class CheckPlatform extends StatefulWidget {
  @override
  _CheckPlatformState createState() => _CheckPlatformState();
}

class _CheckPlatformState extends State<CheckPlatform> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('检测当前运行的平台'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
              Text('运行平台：${gerRunPlatform()}', style: TextStyle(fontSize: 24),)
          ],
        ),
      ),
    );
  }
}

String gerRunPlatform()
{
  if(kIsWeb) {
    return "Web";
  }else if (Platform.isAndroid) {
    return "Android";
  } else if (Platform.isIOS) {
    return "IOS";
  }else {
    return "Unkown";
  }
}

