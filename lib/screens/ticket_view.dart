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
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Text(
                    "NYC",
                    style: Styles.headlineText3.copyWith(color: Colors.white),
                  ),
                  Expanded(child: Container()),
                  ThickContainer(),
                  Expanded(
                    child: Stack(children: [
                    SizedBox(
                      height: 20,
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate((constraints.constrainWidth()/6).floor(),(index) => SizedBox(width: 3, height: 1,
                            child: DecoratedBox(decoration: BoxDecoration(color: Colors.white)),
                            ),
                            ),
                          );
                        },
                      ),
                    ),
                    Center(child: Transform.rotate(angle: 1.5, child: const Icon(Icons.local_airport_rounded, color: Colors.white,),)),
                    ],
                    ),
                  ),
                  ThickContainer(),
                  Expanded(child: Container()),
                  Text(
                    "LDN",
                    style: Styles.headlineText3.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      SizedBox(width: 100, child: Text("New-York", style: Styles.headlineText4.copyWith(color: Colors.white),),),
                      SizedBox(width: 100, child: Text("80H 30M", style: Styles.headlineText4.copyWith(color: Colors.white),),),
                      SizedBox(width: 100, child: Text("London", textAlign: TextAlign.end, style: Styles.headlineText4.copyWith(color: Colors.white),),),
                    ],
                  )
                ],
              ),
            ),
            // The previous container shows the blue part of the ticket
            // The next container shows the red part of the ticket
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)
                      ),
                    )),
                  ),
                  Expanded(
                    child: Padding(padding: const EdgeInsets.all(8.0),
                    
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate((constraints.constrainWidth()/15).floor(),(index) => SizedBox(width: 3, height: 1,
                            child: DecoratedBox(decoration: BoxDecoration(color: Colors.white)),
                            ),
                            ),
                          );
                        },
                      ),),
                    ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)
                      ),
                    )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
