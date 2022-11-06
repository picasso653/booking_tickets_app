import 'package:booking_tickets_app/utils/app_styles.dart';
import 'package:booking_tickets_app/widgets/thick_container.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: Container(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(230, 51, 91, 223),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21),
                topRight: Radius.circular(21)),
              ),
              padding: EdgeInsets.all(20),
              child: Row(
                children: [Text("NYC", style: Styles.headlineText3.copyWith(color: Colors.white),),
                Expanded(child: Container()),
                Expanded(child: Container()),
                ThickContainer(),
                ThickContainer(),
                Expanded(child: Container()),
                Text("London", style: Styles.headlineText3.copyWith(color: Colors.white),),
                

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
