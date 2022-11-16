import 'package:booking_tickets_app/utils/app_layouts.dart';
import 'package:booking_tickets_app/utils/app_styles.dart';
import 'package:booking_tickets_app/widgets/thick_container.dart';
import 'package:flutter/material.dart';

class TicketView1 extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView1({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                      color: isColor==null? const Color.fromARGB(230, 51, 91, 223): Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppLayout.getHeight(21)),
                        topRight: Radius.circular(AppLayout.getHeight(21)),
                      ),
                    ),
                    padding: EdgeInsets.all(AppLayout.getHeight(16)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              ticket['from']['code'],
                              style: isColor==null? Styles.headlineText3
                                  .copyWith(color: Colors.white): Styles.headlineText3,
                            ),
                            Expanded(child: Container()),
                            const ThickContainer(),
                            Expanded(
                              child: Stack(
                                children: [
                                  SizedBox(
                                    height: AppLayout.getHeight(20),
                                    child: LayoutBuilder(
                                      builder: (BuildContext context,
                                          BoxConstraints constraints) {
                                        return Flex(
                                          direction: Axis.horizontal,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          mainAxisSize: MainAxisSize.max,
                                          children: List.generate(
                                            (constraints.constrainWidth() / 6)
                                                .floor(),
                                            (index) =>  SizedBox(
                                              width: 3,
                                              height: 1,
                                              child: DecoratedBox(
                                                  decoration: BoxDecoration(
                                                      color: isColor==null? Colors.white: Colors.grey.shade300)),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Center(
                                    child: Transform.rotate(
                                      angle: 1.5,
                                      child:  Icon(
                                        Icons.local_airport_rounded,
                                        color:isColor==null? Colors.white: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const ThickContainer(),
                            Expanded(child: Container()),
                            Text(
                              ticket['to']['code'],
                              style:isColor==null? Styles.headlineText3
                                  .copyWith(color: Colors.white):Styles.headlineText3,
                            ),
                            const SizedBox(height: 3),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: AppLayout.getWidth(100),
                              child: Text(
                                ticket['from']['name'],
                                style:isColor==null? Styles.headlineText4
                                    .copyWith(color: Colors.white): Styles.headlineText4,
                              ),
                            ),
                            Text(
                              ticket['flying time'],
                              style:isColor==null? Styles.headlineText4
                                  .copyWith(color: Colors.white): Styles.headlineText4,
                            ),
                            SizedBox(
                              width: AppLayout.getWidth(100),
                              child: Text(
                                ticket['to']['name'],
                                textAlign: TextAlign.end,
                                style:isColor==null? Styles.headlineText4
                                    .copyWith(color: Colors.white): Styles.headlineText4,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    )),

                // The previous container shows the blue part of the ticket
                // The next container shows the link between the red and blue part of the ticket
                Container(
                  color: Styles.orangeColor,
                  child: Row(
                    children: [
                      SizedBox(
                        height: AppLayout.getHeight(20),
                        width: AppLayout.getWidth(10),
                        child: DecoratedBox(
                            decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight:
                                  Radius.circular(AppLayout.getHeight(10)),
                              bottomRight:
                                  Radius.circular(AppLayout.getHeight(10))),
                        )),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: LayoutBuilder(
                            builder: (BuildContext context,
                                BoxConstraints constraints) {
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: List.generate(
                                  (constraints.constrainWidth() / 15).floor(),
                                  (index) => const SizedBox(
                                    width: 3,
                                    height: 1,
                                    child: DecoratedBox(
                                        decoration:
                                            BoxDecoration(color: Colors.white)),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                        width: 10,
                        child: DecoratedBox(
                            decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)),
                        )),
                      ),
                    ],
                  ),
                ),
                // the next container shows the red part of the ticket
                Container(
                  decoration: BoxDecoration(
                    color: Styles.orangeColor,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21)),
                  ),
                  padding: const EdgeInsets.only(
                      top: 10, left: 16, right: 16, bottom: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket['date'],
                            style: Styles.headlineText3
                                .copyWith(color: Colors.white),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Date',
                            style: Styles.headlineText3
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket['depature'],
                            style: Styles.headlineText3
                                .copyWith(color: Colors.white),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Depature Time',
                            style: Styles.headlineText3
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket['number'],
                            style: Styles.headlineText3
                                .copyWith(color: Colors.white),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Number',
                            style: Styles.headlineText3
                                .copyWith(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
