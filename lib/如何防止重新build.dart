import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ReBuilder(),
    );
  }
}

class ReBuilder extends StatefulWidget {
  @override
  _ReBuilderState createState() => _ReBuilderState();
}

class _ReBuilderState extends State<ReBuilder> {
  Future<int> future;

  @override
  void initState() {
    future = Future.value(42);
    super.initState();
  }

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final MyWidgetClass finalWidget = MyWidgetClass(key: Key('final'));

  @override
  Widget build(BuildContext context) {
    // https://stackoverflow.com/questions/52249578/how-to-deal-with-unwanted-widget-build/52249579?r=SearchResults&s=31|0.0000#52249579
    return Scaffold(
      appBar: AppBar(
        title: Text('防止重新Builder'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[

            // 避免网络请求，每次重新Build时，重新请求
            FutureBuilder(
              future: future,
              builder: (context, snapshot) {
                // create some layout here
                return Text(
                  snapshot.data.toString(),
                  style: TextStyle(color: Colors.red, fontSize: 30),
                );
              },
            ),

            Text(
              'You have pushed the button this many times:',
            ),

            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),

            // 常量组件，只构建一次
            const MyWidgetClass(key: const Key('const')),

            MyWidgetClass(key: Key('non-const')),

            _buildSomeWidgets(),

            finalWidget,
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildSomeWidgets() {
    print('${DateTime.now()} Rebuild _buildSomeWidgets');
    return Container();
  }
}

class MyWidgetClass extends StatelessWidget {
  const MyWidgetClass({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('${DateTime.now()} Rebuild MyWidgetClass $key');

    return Container(
      child: Text(
        DateTime.now().toString(),
        style: TextStyle(color: Colors.red, fontSize: 30),
      ),
    );
  }
}