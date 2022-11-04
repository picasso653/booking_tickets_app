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
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    // ignore: prefer_const_constructors
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Good Morning'),
                    Text('Book Tickets'),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                       // ignore: prefer_const_constructors
                       image: DecorationImage(
                         fit: BoxFit.cover,
                         image: const AssetImage(("assets/plane_1.jpg"),
                       ),
                       ),
                       ),
                     
                    ),
                  ],
                ),
              ]),
          )
        ],
      ),
    );
  }
}