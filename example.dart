import 'package:flutter/material.dart';
import 'package:flutter_fadein/flutter_fadein.dart';

void main() => runApp(FadeInDemo());

class FadeInDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: FadeIn(
            child: Text("This will be faded-in!"),
            // Optional paramaters
            duration: Duration(milliseconds: 250),
            curve: Curves.easeIn,
          ),
        ),
      ),
    );
  }
}
