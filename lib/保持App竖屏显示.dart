import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

main() {
  main3();
}

// 具体教程
// https://stackoverflow.com/questions/49418332/flutter-how-to-prevent-device-orientation-changes-and-force-portrait/50884081#50884081

// portrait mode 强制竖屏模式，肖像模式
void main1() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp,DeviceOrientation.portraitDown])
      .then((_) {
    runApp(MainApp());
  });
}

//  landscape mode 强制宽屏模式，风景模式
void main2() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight])
      .then((_) {
    runApp(MainApp());
  });
}

// 另一种写法，竖屏模式
Future<void> main3() async {
  // 注意因 setPreferredOrientations 是异步函数，所以需要await才能生效
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  return runApp(new MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    main3();

    return MaterialApp(
      home: TestExample(),
    );
  }
}

class TestExample extends StatefulWidget {
  @override
  _TestExampleState createState() => _TestExampleState();
}

class _TestExampleState extends State<TestExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('保持App竖屏显示'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('保持App竖屏显示，注意如果不生效，需要更改项目配置如AndroidManifest android:screenOrientation="portrait"', style: TextStyle(fontSize: 24),)
          ],
        ),
      ),
    );
  }
}

