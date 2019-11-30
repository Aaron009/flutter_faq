import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CircleProgress(),
      theme: ThemeData(accentColor: Colors.green),
    );
  }
}

class CircleProgress extends StatefulWidget {
  @override
  _CircleProgressState createState() => _CircleProgressState();
}

class _CircleProgressState extends State<CircleProgress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('圆形进度条改变颜色'),
      ),
      // https://stackoverflow.com/questions/49952048/how-to-change-color-of-circularprogressindicator/58743628#58743628
      body: Container(
        color: Colors.grey,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Wrap(
                spacing: 50,
                runSpacing: 10,
                alignment: WrapAlignment.center,
                children: <Widget>[
                  LinearProgressIndicator(),
                  new Theme(
                    data: Theme.of(context).copyWith(accentColor: Colors.yellow),
                    child: new CircularProgressIndicator(),
                  ),
                  CircularProgressIndicator(),

                  Container(
                    child: Stack(
                      children: <Widget>[
                        LinearProgressIndicator(
                          value: currentProgress,
                          valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
                        ),
                        Text('带控制的进度条'),
                        Container(
                          alignment: Alignment.centerRight,
                          child: RaisedButton(
                            onPressed: onProgressChange,
                            child: Text("改变进度"),
                          ),
                        )
                      ],
                    ),
                  )

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  double currentProgress = 0.0;
  onProgressChange() {
    setState(() {
      currentProgress += 0.1;
      if (currentProgress >= 1.0) {
        currentProgress = 0.0;
      }
    });
  }
}

