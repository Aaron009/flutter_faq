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
import 'package:flutter_app/磨砂效果frosted glass.dart' as Error15;
import 'package:flutter_app/圆形进度条改变颜色.dart' as Error16;
import 'package:flutter_app/如何防止重新build.dart' as Error17;
import 'package:flutter_app/关闭键盘显示.dart' as Error18;
import 'package:flutter_app/当UI大小遭到键盘挤压时，使UI不会变小.dart' as Error19;
import 'package:flutter_app/超长文本显示省略号.dart' as Error20;
import 'package:flutter_app/测试滚动性能.dart' as Error21;
import 'package:flutter_app/测试播放在线视频.dart' as Error22;
import 'package:flutter_app/百分比显示组件.dart' as Error23;
import 'package:flutter_app/创建只能输入数字的文本框.dart' as Error24;
import 'package:flutter_app/富文本示例.dart' as Error25;
import 'package:flutter_app/屏幕适配.dart' as Error26;
import 'package:flutter_app/测试网络加载.dart' as Error27;
import 'package:flutter_app/处理返回键.dart' as Error28;
import 'package:flutter_app/判断是调试还是发布模式.dart' as Error29;
import 'package:flutter_app/保持App竖屏显示.dart' as Error30;

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
        reverse: true,
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
          getListTitle('磨砂效果frosted glass', new Error15.MainApp()),
          getListTitle('圆形进度条改变颜色', new Error16.MainApp()),
          getListTitle('如何防止重新build', new Error17.MainApp()),
          getListTitle('关闭键盘显示', new Error18.MainApp()),
          getListTitle('当UI大小遭到键盘挤压时，使UI不会变小', new Error19.MainApp()),
          getListTitle('超长文本显示省略号', new Error20.MainApp()),
          getListTitle('测试滚动性能', new Error21.MainApp()),
          getListTitle('测试播放在线视频', new Error22.MainApp()),
          getListTitle('百分比显示组件', new Error23.MainApp()),
          getListTitle('创建只能输入数字的文本框', new Error24.MainApp()),
          getListTitle('富文本示例', new Error25.MainApp()),
          getListTitle('屏幕适配', new Error26.MainApp()),
          getListTitle('测试网络加载', new Error27.MainApp()),
          getListTitle('处理返回键', new Error28.MainApp()),
          getListTitle('判断是调试还是发布模式', new Error29.MainApp()),
          getListTitle('保持App竖屏显示', new Error30.MainApp()),

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
