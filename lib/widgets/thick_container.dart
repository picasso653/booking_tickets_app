import 'package:flutter/material.dart' show Border, BorderRadius, BoxDecoration, BuildContext, Colors, Container, EdgeInsets, StatelessWidget, Widget;

class ThickContainer extends StatelessWidget {
  const ThickContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(3.0),
      decoration: BoxDecoration( borderRadius: BorderRadius.circular(20),
      border: Border.all(width: 2.5, color: Colors.white)),
    );
  }
}