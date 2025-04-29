import 'package:flutter/material.dart';
import 'secondPage.dart';
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
       child: GestureDetector(
         onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Secondpage(),
            ),
          );
        },
        child: Hero(tag: 'hero-tag', child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdFgPLtxo-IAbqZSUYGzbXYGo3mzSlbYA91w&s', width: 150, height: 150,)),
       ),
      ),
    );

  }
}
