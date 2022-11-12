import 'package:booking_tickets_app/screens/another_ticket_view.dart';
import 'package:booking_tickets_app/screens/hotel_screen.dart';
import 'package:booking_tickets_app/screens/ticket_view.dart';
import 'package:booking_tickets_app/utils/app_info.dart';
import 'package:booking_tickets_app/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              // ignore: avoid_unnecessary_containers
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const SizedBox(height: 40,),
                    Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        // ignore: prefer_const_constructors
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // ignore: prefer_const_constructors
                            Text('Good Morning', style: Styles.headlineText3,),
                            const SizedBox(height: 5,),
                        Text('Book Tickets', style: Styles.headlineText1,),
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
                  // ignore: prefer_const_constructors
                  SizedBox(height: 25,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    child: Row(
                      children: [
                        const Icon(FluentSystemIcons.ic_fluent_search_regular, color: Colors.grey,),
                        Text('Search', style: Styles.headlineText4,)
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [ Text("Upcoming Flights", style: Styles.headlineText2,),
                    InkWell(
                      child:
                      Text("View all", style: Styles.textStyle.copyWith(color: primary),
                      ),
                      ),
                      
                    ],
                  )
                  ]),
              ),
              const SizedBox(height: 15,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: ticketList.map((singleTicket) => TicketView1(ticket: singleTicket),).toList(),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [ Text("Hotels", style: Styles.headlineText2,),
                    InkWell(
                      child:
                      Text("View all", style: Styles.textStyle.copyWith(color: primary),
                      ),
                      ),
                      
                    ],
                  ),
              ),
              const SizedBox(height: 15,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children:  hotel_list.map((hotelinfo) => HotelScreen(hotel: hotelinfo)).toList()
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}