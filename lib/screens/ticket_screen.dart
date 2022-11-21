import 'package:booking_tickets_app/screens/ticket_view.dart';
import 'package:booking_tickets_app/utils/app_info.dart';
import 'package:booking_tickets_app/utils/app_layouts.dart';
import 'package:booking_tickets_app/utils/app_styles.dart';
import 'package:booking_tickets_app/widgets/column_layout.dart';
import 'package:booking_tickets_app/widgets/layout_builder_widget.dart';
import 'package:booking_tickets_app/widgets/ticket_tab.dart';
import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';
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
              SizedBox(height: AppLayout.getHeight(20),),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView1(ticket: ticketList[0], isColor: true,),
              ),
              const SizedBox(height: 1,),
              Container(
              padding:  EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15), vertical: 20),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              color: Colors.white,
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ColumnLayout(firstText: 'Flutter DB', secondText: 'Passenger', alignment: CrossAxisAlignment.start, isColor: true,),
                    ColumnLayout(firstText: '2953 856871', secondText: 'Passport', alignment: CrossAxisAlignment.end, isColor: true,)
                  ],
                ),
                SizedBox(height: AppLayout.getHeight(20),),
                const AppLayoutBuilder(sections: 15, isColor: true,width: 5,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ColumnLayout(firstText: '0055 444 77147', secondText: 'Number of E-ticket', alignment: CrossAxisAlignment.start, isColor: true,),
                    ColumnLayout(firstText: 'B2SG28', secondText: 'Booking Code', alignment: CrossAxisAlignment.end, isColor: true,),
                  ],
                ),
                SizedBox(height: AppLayout.getHeight(20),),
                const AppLayoutBuilder(sections: 15, isColor: true,width: 5,),
                SizedBox(height: AppLayout.getHeight(20),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/Visa_logo.jpg', scale: 30,),
                            Text('*** 2462', style: Styles.headlineText3,)
                          ],
                        ),
                        SizedBox(height: AppLayout.getHeight(5),),
                        Text('Payment Method', style: Styles.headlineText3,)
                      ],
                    ),
                    Column(children: const [
                      ColumnLayout(firstText: '\$249.00', secondText: 'Price', alignment: CrossAxisAlignment.end, isColor: true,)
                    ],)
                  ],
                )
              ],),
              ),
              const SizedBox(height: 1,),
              Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(AppLayout.getHeight(21)), 
                  bottomRight: Radius.circular(AppLayout.getHeight(21))),
                  color: Colors.white,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                  child: BarcodeWidget(
                barcode: Barcode.code128(), 
              data: 'https://github.com/picasso653',
              drawText: false,
              width: double.infinity,
              color: Styles.textcolor,
              height: 70,
              ),
                ),
              ),
              SizedBox(height: AppLayout.getHeight(20),),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView1(ticket: ticketList[0]),
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(19),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3)),
              decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 3, color: Styles.textcolor)
            ),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textcolor,
            ),
            )),
            Positioned(
              right: AppLayout.getHeight(19),
              top: AppLayout.getHeight(295),
              child:  Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3)),
              decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 3, color: Styles.textcolor)
            ),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textcolor,
            ),
            ))
        ],
      ),
    );
  }
}