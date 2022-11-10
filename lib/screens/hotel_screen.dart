import 'package:booking_tickets_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade500, blurRadius: 20, spreadRadius: 5)
          ]),
      child: Column(
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                color: Styles.primaryColor,
                image: const DecorationImage(
                    image: AssetImage('assets/plane_2.jpg'))),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Global Will",
            style: Styles.headlineText2.copyWith(color: Styles.kakiColor),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "London",
            style: Styles.headlineText3.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "\$300 per night",
            style: Styles.headlineText1.copyWith(color: Styles.kakiColor),
          )
        ],
      ),
    );
  }
}
