import 'package:flutter/material.dart';
import '../utils/app_layouts.dart';
import '../utils/app_styles.dart';

class ColumnLayout extends StatelessWidget {
  final String firstText;
  final String secondText;
  final CrossAxisAlignment alignment;
  final bool? isColor;
  const ColumnLayout(
      {super.key,
      required this.firstText,
      required this.secondText,
      required this.alignment,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          firstText,
           style:isColor==null? Styles.headlineText3.copyWith(color: Colors.white):Styles.headlineText3,
        ),
        SizedBox(
          height: AppLayout.getHeight(5),
        ),
        Text(
          secondText,
          style:isColor==null? Styles.headlineText4.copyWith(color: Colors.white):Styles.headlineText4,
        ),
      ],
    );
  }
}
