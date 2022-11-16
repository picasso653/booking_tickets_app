// ignore: file_names
// ignore: file_names
import 'package:booking_tickets_app/utils/app_styles.dart';
import 'package:booking_tickets_app/widgets/ticket_tab.dart';
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
           const TicketTab(firstTab: 'Airline Tickets', secondTab: 'Hotels',),
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
          const DoubleText(bigText: "Upcoming Flights", smallText: "View all"),
          SizedBox(height: AppLayout.getHeight(20),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Container(
              height: AppLayout.getHeight(400),
              width: MediaQuery.of(context).size.width*.44, 
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), 
              horizontal: AppLayout.getWidth(10)),
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(
                  color: Colors.blueGrey.shade200,
                  spreadRadius: 1,
                  blurRadius: 1
                )],
                color: Colors.white,
                borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
              ),
              child: Column(
              children: [
                Container(
                  height: AppLayout.getHeight(200),
                  // ignore: prefer_const_constructors
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/inside_an_airplane.jpg"))
                  ),
                ),
                SizedBox(height: AppLayout.getHeight(20),),
                Text("20% discount on business class tickets don't miss out on this chance!", 
                style: Styles.headlineText2.copyWith(color: Colors.deepPurple),)
              ],
            ),),
            Column(children: [
              Stack(
                children: [
                  Container(
                width: MediaQuery.of(context).size.width*.44,
                height: AppLayout.getHeight(200),
                decoration:  BoxDecoration(
                  color: const Color.fromARGB(255, 79, 161, 238),
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                ),
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10), vertical: AppLayout.getHeight(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Discount\nfor survey.", style: Styles.headlineText2.copyWith(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),),
                    SizedBox(height: AppLayout.getHeight(20),),
                    Text("Take the survey about our services and get discount.", 
                    style: Styles.headlineText2.copyWith(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 20),),
                    
                  ],
                ),
                
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                padding: EdgeInsets.all(AppLayout.getHeight(30)),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 18, color: const Color.fromARGB(255, 3, 90, 161))
                ),
              ))
                ],
              ),
              SizedBox(height: AppLayout.getHeight(10),),
              Container(
                width: MediaQuery.of(context).size.width*.44,
                height: 185,
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(12), horizontal: AppLayout.getWidth(12)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                  color: Colors.red
                ),
                child: Column(
                  children: [
                    Text('Take Love', style: Styles.headlineText1.copyWith(color: Colors.white, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                    SizedBox(height: AppLayout.getHeight(5),),
                    Row(
                      children: const [
                        Text('😍', style: TextStyle(fontSize: 38),),
                        Text('😊', style: TextStyle(fontSize: 50),),
                        Text('😘', style: TextStyle(fontSize: 35))
                      ],
                    )
                  ],
                ),
              )
            ],)
          ],)
        ],
      ),
    );
  }
}