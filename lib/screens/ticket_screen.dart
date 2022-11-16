import 'package:booking_tickets_app/screens/ticket_view.dart';
import 'package:booking_tickets_app/utils/app_info.dart';
import 'package:booking_tickets_app/utils/app_layouts.dart';
import 'package:booking_tickets_app/utils/app_styles.dart';
import 'package:booking_tickets_app/widgets/ticket_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20), 
              vertical: AppLayout.getHeight(20)
            ),
            children: [
              SizedBox(height: AppLayout.getHeight(40),),
              Text('Tickets', style: Styles.headlineText2,),
              SizedBox(height: AppLayout.getHeight(20)),
              const TicketTab(firstTab: 'Upcoming', secondTab: 'Previous'),
              Container(
                child: TicketView1(ticket: ticketList[0], isColor: true,),
              )
            ],
          )
        ],
      ),
    );
  }
}