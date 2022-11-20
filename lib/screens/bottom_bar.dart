// ignore: unnecessary_import
// ignore_for_file: prefer_const_constructors

import 'package:booking_tickets_app/screens/search_screen.dart';
import 'package:booking_tickets_app/screens/home_screen.dart';
import 'package:booking_tickets_app/screens/ticket_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    const TicketScreen(),
    const Text('Profile')
  ];
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: true,
          selectedItemColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_add_regular),
                backgroundColor: Colors.red,
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_add_filled),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                backgroundColor: Colors.purple,
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                backgroundColor: Colors.deepPurple,
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                label: 'Tickets'),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                backgroundColor: Color.fromARGB(255, 3, 80, 143),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_add_filled),
                label: 'Profile'),
          ]),
    );
  }
}
