import 'package:booking_tickets_app/utils/app_styles.dart';
import 'package:booking_tickets_app/widgets/thick_container.dart';
import 'package:flutter/material.dart';

class TicketView2 extends StatelessWidget {
  const TicketView2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Container(
        margin:const EdgeInsets.only(left: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(230, 51, 91, 223),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21))),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [Row(
                children: [
                  Text(
                    "SLO",
                    style: Styles.headlineText3.copyWith(color: Colors.white),
                  ),
                  Expanded(child: Container()),
                  const ThickContainer(),
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
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate((constraints.constrainWidth()/6).floor(),(index) => const SizedBox(width: 3, height: 1,
                            child: DecoratedBox(decoration: BoxDecoration(color: Colors.white)),
                            ),
                            ),
                          );
                        },
                      ),
                    ),
                    Center(child: Transform.rotate(angle: 1.5, child: const Icon(Icons.local_airport_rounded, color: Colors.white,),),),
                    ],
                    ),
                  ),
                  const ThickContainer(),
                  Expanded(child: Container()),
                  Text(
                    "SFO",
                    style: Styles.headlineText3.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 3),
                  
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 100, child: Text("Santo Illesso", style: Styles.headlineText4.copyWith(color: Colors.white),),),
                       Text("80H 30M", style: Styles.headlineText4.copyWith(color: Colors.white),),
                      SizedBox(width: 100, child: Text("San Fransisco", textAlign: TextAlign.end, style: Styles.headlineText4.copyWith(color: Colors.white),),),
                    ],),
               
                  
              
            
            // The previous container shows the blue part of the ticket
            // The next container shows the link between the red and blue part of the ticket
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  const SizedBox(
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
            ),
          // the next container shows the red part of the ticket
            Container(
              decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)),
              ),
              padding: const EdgeInsets.only(top:10, left:16, right:16,bottom: 16),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('1 MAY', style: Styles.headlineText3.copyWith(color: Colors.white),),
                      SizedBox(height: 5,),
                      Text('Date', style: Styles.headlineText3.copyWith(color: Colors.white),)
                    ],
                  ),
                   Column(crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('08:00', style: Styles.headlineText3.copyWith(color: Colors.white),),
                      SizedBox(height: 5,),
                      Text('Depature Time', style: Styles.headlineText3.copyWith(color: Colors.white),)
                    ],
                  ),
                   Column(crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('23', style: Styles.headlineText3.copyWith(color: Colors.white),),
                      SizedBox(height: 5,),
                      Text('Number', style: Styles.headlineText3.copyWith(color: Colors.white),)
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      ],
      ),
    ),
    );
    
  }
}
