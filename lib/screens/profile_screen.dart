 import 'package:booking_tickets_app/utils/app_layouts.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';

import '../utils/app_styles.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
        children: [
          SizedBox(height: AppLayout.getHeight(40),),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getHeight(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  image: const DecorationImage(image: AssetImage('assets/plane_1.jpg'))
                ),
              ),
              SizedBox(width: AppLayout.getHeight(10),),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Book Tickets', style: Styles.headlineText1,),
                  SizedBox(height: AppLayout.getHeight(2),),
                  Text('New-York', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500),),
                  SizedBox(height: AppLayout.getHeight(8),),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(3), vertical: AppLayout.getHeight(3)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
                      color: const Color(0xFFFEF4F3)
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799)
                          ),
                          child: const Icon(FluentSystemIcons.ic_fluent_shield_filled, 
                          size: 15, color: Colors.white,),
                        ),
                        SizedBox(width: AppLayout.getWidth(5),),
                        const Text('Premium Status', style: TextStyle(
                          color: Color(0xFF526799), fontWeight: FontWeight.w600
                        ),),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    child: Text('Edit',style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w300), ),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: AppLayout.getHeight(8),),
          Divider(
            color: Colors.grey.shade300,),
            SizedBox(height: AppLayout.getHeight(8),),
            Stack(
              children: [
                Container(
                  height: AppLayout.getHeight(90),
                  decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                  ),
                ),
                Positioned(
                right: -45,
                top: -40,
                child: Container(
                padding: EdgeInsets.all(AppLayout.getHeight(30)),
                decoration: BoxDecoration(
                  color: Colors.transparent ,
                  shape: BoxShape.circle,
                  border: Border.all(width: 18, color: const Color.fromARGB(255, 3, 90, 161))
                ),
              )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                const CircleAvatar(
                  maxRadius: 25, backgroundColor: Colors.white,
                  child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled, size: 27,),
                ),
                SizedBox(width: AppLayout.getHeight(12),),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("You've got a new award!", 
                  style: Styles.headlineText2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Text("You have 95 flights in a year", 
                  style: Styles.headlineText2.copyWith(fontWeight: FontWeight.w500, color: Colors.white.withOpacity(0.9)),
                  )
                ],)
              ],),
              )
              ],
            )
        ],
      ),
    );
  }
}