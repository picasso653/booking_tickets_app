import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // ignore: avoid_unnecessary_containers
          Container(
            child: Column(
              children: [
                Row(
                  children:  [
                    // ignore: prefer_const_constructors
                    Text('Good Morning'),
                    Image.asset('assets/plane_1.jpg'),
                  ],
                )
              ]),
          )
        ],
      ),
    );
  }
}