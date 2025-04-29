import 'package:flutter/material.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Hero(tag: 'hero-tag', child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdFgPLtxo-IAbqZSUYGzbXYGo3mzSlbYA91w&s', width: 300, height: 300,)),
      ),
    );
  }
}
