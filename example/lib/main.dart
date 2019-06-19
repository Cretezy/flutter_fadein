import 'package:flutter/material.dart';
import 'package:flutter_fadein/flutter_fadein.dart';

void main() => runApp(FadeInDemo());

class FadeInDemo extends StatefulWidget {
  @override
  _FadeInDemoState createState() => _FadeInDemoState();
}

class _FadeInDemoState extends State<FadeInDemo> {
  final _controller = FadeInController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(64),
          children: <Widget>[
            FadeIn(
              child: Text(
                "This will be faded-in!",
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 32),
            FadeIn(
              child: Text(
                "This will be faded-in slowly!",
                textAlign: TextAlign.center,
              ),
              duration: Duration(seconds: 2),
            ),
            SizedBox(height: 32),
            FadeIn(
              controller: _controller,
              child: Text(
                "This will be faded-in with a controller!",
                textAlign: TextAlign.center,
              ),
              duration: Duration(milliseconds: 500),
            ),
            SizedBox(height: 8),
            FlatButton(
              child: Text("Fade-In"),
              onPressed: () => _controller.fadeIn(),
            ),
            FlatButton(
              child: Text("Fade-Out"),
              onPressed: () => _controller.fadeOut(),
            ),
          ],
        ),
      ),
    );
  }
}
