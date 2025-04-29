import 'package:flutter/material.dart';

class MyAppState extends StatefulWidget {
  const MyAppState({super.key});

  @override
  State<MyAppState> createState() => MyAppStateState();
}

class MyAppStateState extends State<MyAppState>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 300).animate(_controller);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          FloatingActionButton(
            onPressed: () {
              _controller.status == AnimationStatus.completed
                  ? _controller.reverse()
                  : _controller.forward();
            },
            child: Icon(Icons.play_arrow),
          ),
        ],
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Container(
              width: _animation.value,
              height: _animation.value,
              color: Colors.blue,
              child: child,
            );
          },
          child: FlutterLogo(size: 100),
        ),
      ),
    );
  }
}
