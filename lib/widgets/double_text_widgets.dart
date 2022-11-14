import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class DoubleText extends StatelessWidget {
  final String bigText;
  final String smallText;
  const DoubleText({super.key, required this.bigText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: Styles.headlineText2,
        ),
        InkWell(
          child: Text(
            smallText,
            style: Styles.textStyle.copyWith(color: primary),
          ),
        ),
      ],
    );
  }
}
