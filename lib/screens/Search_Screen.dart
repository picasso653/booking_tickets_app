// ignore: file_names
// ignore: file_names
import 'package:booking_tickets_app/utils/app_styles.dart';
import 'package:booking_tickets_app/widgets/icon_text_widgets.dart';
import 'package:flutter/material.dart';

import '../utils/app_layouts.dart';
import '../widgets/double_text_widgets.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Styles.backgroundcolor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
        children: [
          SizedBox(height: AppLayout.getHeight(40)),
          Text('What are \nyou looking for?', style: Styles.headlineText1.copyWith(fontSize: AppLayout.getHeight(35)),),
          SizedBox(height: AppLayout.getHeight(20),),
          FittedBox(
            child:Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(50),
              ),
              color: const Color.fromARGB(255, 226, 221, 221)),
              padding: const EdgeInsets.all(3.5),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*.44,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal( left: Radius.circular(AppLayout.getHeight(50)),
              ),
              color: Colors.white),
              child: const Center(child: Text('Airline Tickets'),),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*.44,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal( right: Radius.circular(AppLayout.getHeight(50)),
              ),
              color: Colors.grey.shade300),
              child: const Center(child: Text('Hotels'),),
                  )
                ],
              ),
          ) ,),
          SizedBox(height: AppLayout.getHeight(25),),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: 'Depature'),
          SizedBox(height: AppLayout.getHeight(20),),
          const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          SizedBox(height: AppLayout.getHeight(25),),
          Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
          color: const Color.fromARGB(255, 15, 67, 179)),
      padding: EdgeInsets.symmetric(
          vertical: AppLayout.getHeight(18),
          horizontal: AppLayout.getWidth(15)),
      child: 
          
          Center(
            child: Text('Find Tickets',style: Styles.textStyle.copyWith(color: Colors.white),),
            )
        ),
          SizedBox(height: AppLayout.getHeight(20),),
          const DoubleText(bigText: "Upcoming Flights", smallText: "View all")
        ],
      ),
    );
  }
}