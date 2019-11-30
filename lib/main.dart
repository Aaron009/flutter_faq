import 'package:flutter/material.dart';
import 'package:flutter_app/九宫格图缩放示例.dart' as Error1;
import 'package:flutter_app/使用布局出现的错误.dart' as Error2;
import 'package:flutter_app/创建圆角按钮.dart' as Error3;
import 'package:flutter_app/尝试Hero动画.dart' as Error4;
import 'package:flutter_app/布局练习.dart' as Error5;
import 'package:flutter_app/没有下划线的TextField.dart' as Error6;
import 'package:flutter_app/给图片添加圆角.dart' as Error7;
import 'package:flutter_app/给文本添加边框.dart' as Error8;
import 'package:flutter_app/设置背景图.dart' as Error9;
import 'package:flutter_app/运行平台判断.dart' as Error10;
import 'package:flutter_app/Hero测试2.dart' as Error11;
import 'package:flutter_app/子组件匹配父组件大小.dart' as Error12;
import 'package:flutter_app/导航控制返回时移除返回按钮.dart' as Error13;
import 'package:flutter_app/创建Toast示例.dart' as Error14;

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExampleList(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ExampleList extends StatefulWidget {
  @override
  _ExampleListState createState() => _ExampleListState();
}

class _ExampleListState extends State<ExampleList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('所有示例列表'),
      ),
      body: ListView(
        children: <Widget>[

          getListTitle('九宫格图缩放示例', new Error1.MainApp()),
          getListTitle('使用布局出现的错误', new Error2.MainApp()),
          getListTitle('创建圆角按钮', new Error3.MainApp()),
          getListTitle('尝试Hero动画', new Error4.MainApp()),
          getListTitle('布局练习', new Error5.MainApp()),
          getListTitle('没有下划线的TextField', new Error6.MainApp()),
          getListTitle('给图片添加圆角', new Error7.MainApp()),
          getListTitle('给文本添加边框', new Error8.MainApp()),
          getListTitle('设置背景图', new Error9.MainApp()),
          getListTitle('运行平台判断', new Error10.MainApp()),
          getListTitle('Hero测试2', new Error11.MainApp()),
          getListTitle('子组件匹配父组件大小', new Error12.MainApp()),
          getListTitle('导航控制返回时移除返回按钮', new Error13.MainApp()),
          getListTitle('创建Toast示例', new Error14.MainApp()),

        ],
      ),
    );
  }

  ListTile getListTitle(String message, Widget widget) {
    return ListTile(
        title: Text(message),
        onTap: () {
          Navigator.push(
            context,
            new MaterialPageRoute(builder: (context) => widget),
          );
        });
  }
}
