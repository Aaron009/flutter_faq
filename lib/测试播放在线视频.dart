import 'package:flutter/material.dart';
import 'package:gplayer/gplayer.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TestPlayMovie(),
    );
  }
}

class TestPlayMovie extends StatefulWidget {
  @override
  _TestPlayMovieState createState() => _TestPlayMovieState();
}

class _TestPlayMovieState extends State<TestPlayMovie> {
  GPlayer player;
  String playerURL = 'http://192.168.0.36:8080/1.mp4';
  String playerURLSecond = 'http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4';

  @override
  void initState() {
    super.initState();

    player = GPlayer(uri: playerURL)
      ..init()
      ..addListener((_) {
        //update control button out of player
        setState(() {});
      });
  }

  @override
  void dispose() {
    player?.dispose(); //2.release player
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('测试在线播放视频'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              width: size.width.toInt().toDouble(),
              height: 300,
              child: player.display,
            ),
            RaisedButton(
              child: Text('播放下一条视频'),
              onPressed: () {
                setState(() {
                  player.dispose();

                  player = GPlayer(uri: playerURLSecond)
                    ..init()
                    ..addListener((_) {
                      //update control button out of player
                      setState(() {});
                    })
                    ..start();
                });
              },
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            player.isPlaying ? player.pause() : player.start();
          });
        },
        child: Icon(
          player.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}

