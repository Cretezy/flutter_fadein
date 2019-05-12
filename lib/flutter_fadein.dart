import 'package:flutter/widgets.dart';

class FadeIn extends StatefulWidget {
  /// Child widget to fade-in
  final Widget child;

  /// Duration of fade-in. Defaults to 250ms
  final Duration duration;

  /// Fade-in curve. Defaults to [Curves.easeIn]
  final Curve curve;

  const FadeIn({
    Key key,
    this.child,
    this.duration = const Duration(milliseconds: 250),
    this.curve = Curves.easeIn,
  }) : super(key: key);

  @override
  _FadeInState createState() => _FadeInState();
}

class _FadeInState extends State<FadeIn> with TickerProviderStateMixin {
  AnimationController _controller;
  CurvedAnimation _curve;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );

    _curve = CurvedAnimation(parent: _controller, curve: widget.curve);

    _animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(_curve);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _controller,
      child: widget.child,
    );
  }
}
