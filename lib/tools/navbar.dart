import 'package:flutter/material.dart';
import 'package:trains/screens/home.dart';
import 'package:trains/screens/ticket.dart';
import 'package:trains/tools/trains.dart';
import 'package:trains/screens/profile.dart';

List<Widget> Screen = [HomeScreen(), TicketScreen(), Trains(), ProfileScreen()];

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Nav();
  }
}

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;

  final List<Widget> _iconWidgets = [
    Image.asset('assets/Home.png', width: 20, height: 20),
    Image.asset('assets/ion_ticket.png', width: 22, height: 22),
    Icon(Icons.train, color: Color(0xff67686D)),
    Icon(Icons.person, color: Color(0xff67686D)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  BottomNavigationBarItem _buildBarItem(Widget iconWidget, int index) {
    return BottomNavigationBarItem(
      icon: Column(
        children: [
          iconWidget,
          const SizedBox(height: 4),
          (_selectedIndex == index)
              ? Container(
                  width: 6,
                  height: 6,
                  decoration: const BoxDecoration(
                    color: Color(0xff3D90CB),
                    shape: BoxShape.circle,
                  ),
                )
              : const SizedBox(height: 6),
        ],
      ),
      label: '',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [const Color.fromARGB(85, 61, 144, 203), Colors.white],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          Screen[_selectedIndex],
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          boxShadow: [
            (_selectedIndex == 3)
                ? BoxShadow(
                    offset: Offset(0, -1),
                    blurRadius: 2,
                    color: Color.fromARGB(62, 0, 0, 0))
                : BoxShadow(color: Colors.transparent),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          elevation: 0,
          items: List.generate(
            _iconWidgets.length,
            (index) => _buildBarItem(_iconWidgets[index], index),
          ),
        ),
      ),
    );
  }
}
