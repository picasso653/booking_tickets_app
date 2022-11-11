import 'package:booking_tickets_app/utils/app_styles.dart';
import 'package:flutter/material.dart'
    show
        AssetImage,
        BorderRadius,
        BoxDecoration,
        BoxShadow,
        BuildContext,
        Colors,
        Column,
        Container,
        DecorationImage,
        EdgeInsets,
        MediaQuery,
        SizedBox,
        StatelessWidget,
        Text,
        Widget;

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    var hotel2 = hotel;
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
              image: DecorationImage(
                image: AssetImage("assets/${hotel["Image"]}"),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            hotel['Place'],
            style: Styles.headlineText2.copyWith(color: Styles.kakiColor),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            hotel['Destination'],
            style: Styles.headlineText3.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "${hotel['Price']} per night",
            style: Styles.headlineText1.copyWith(color: Styles.kakiColor),
          )
        ],
      ),
    );
  }
}
