// ignore_for_file: unnecessary_import, implementation_imports

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/app_layouts.dart';

class TicketTab extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const TicketTab({super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              AppLayout.getHeight(50),
            ),
            color: const Color.fromARGB(255, 226, 221, 221)),
        padding: const EdgeInsets.all(3.5),
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * .44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(AppLayout.getHeight(50)),
                  ),
                  color: Colors.white),
              child:  Center(
                child: Text(firstTab),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * .44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(AppLayout.getHeight(50)),
                  ),
                  color: Colors.grey.shade300),
              child:  Center(
                child: Text(secondTab),
              ),
            )
          ],
        ),
      ),
    );
  }
}
