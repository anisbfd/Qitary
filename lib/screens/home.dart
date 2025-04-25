import 'package:flutter/material.dart';
import 'track.dart';
import 'package:trains/tools/tools.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Hello, user 👋',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(0, 0, 0, 0.62),
                    ),
                  ),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    height: 80,
                    width: 80,
                    child: Image.asset(
                      'assets/sntf.png',
                      height: 80,
                      width: 80,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Container(
              height: 52,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.transparent,
                border: Border.all(
                  color: const Color.fromRGBO(61, 144, 203, 1),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: const Row(
                children: [
                  Icon(Icons.search, color: Color.fromRGBO(61, 144, 203, 1)),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'where are you going...',
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(61, 144, 203, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      style: TextStyle(
                        color: Color.fromRGBO(61, 144, 203, 1),
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 13),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Your Tickets',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'See all',
                    style: TextStyle(
                      color: Color.fromRGBO(61, 144, 203, 1),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ticketBlock(context),
            const SizedBox(height: 12),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Today's Train",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    color: Color.fromRGBO(61, 144, 203, 1),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 12),
                    trainCard(context),
                    const SizedBox(height: 12),
                    trainCard(context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget ticketBlock(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Container(
          height: 65,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Boumerdes-Agha',
                style: TextStyle(
                  color: Color.fromRGBO(225, 225, 255, 1),
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  Text(
                    '20min',
                    style: TextStyle(
                      color: Color.fromRGBO(225, 225, 255, 1),
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 5),
                  CircleAvatar(
                    backgroundColor: Color.fromRGBO(225, 225, 255, 1),
                    radius: 15,
                    child: Icon(Icons.train, color: Colors.green, size: 18),
                  ),
                ],
              ),
            ],
          ),
        ),
        Image.asset('assets/dotted.png', width: 350, height: 1),
        Container(
          height: 65,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 23,
                width: 85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromRGBO(225, 225, 255, 1),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.calendar_month,
                      size: 15,
                      color: Color.fromRGBO(61, 144, 203, 1),
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Apr 18th,2025',
                      style: TextStyle(
                        color: Color.fromRGBO(61, 144, 203, 1),
                        fontSize: 8,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromRGBO(225, 225, 255, 1),
                    ),
                    child: SizedBox(
                      height: 35,
                      width: 35,
                      child: Stack(
                        children: [
                          const Center(
                            child: Icon(
                              Icons.notifications,
                              color: Colors.blue,
                              size: 18,
                            ),
                          ),
                          ElevatedButton(
                            child: null,
                            onPressed: () {
                              DialogMessage(context,
                                  'Notifications are not available yet');
                            },
                            style: ElevatedButton.styleFrom(
                              shadowColor: Colors.transparent,
                              overlayColor: Colors.blue,
                              backgroundColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: Color(0xffffffff)),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Container(
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromRGBO(225, 225, 255, 1),
                    ),
                    child: SizedBox(
                      height: 35,
                      width: 35,
                      child: Stack(
                        children: [
                          const Center(
                            child: Icon(
                              Icons.qr_code,
                              color: Colors.blue,
                              size: 18,
                            ),
                          ),
                          ElevatedButton(
                            child: null,
                            onPressed: () {
                              DialogMessage(
                                  context, 'QR code is not available yet');
                            },
                            style: ElevatedButton.styleFrom(
                              shadowColor: Colors.transparent,
                              overlayColor: Colors.blue,
                              backgroundColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: Color(0xffffffff)),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget trainCard(BuildContext context) {
    double w = MediaQuery.of(context).size.width / 363;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Thenia',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 6),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            size: 16,
                            color: Color.fromRGBO(61, 144, 203, 1),
                          ),
                          SizedBox(width: 4),
                          Text(
                            '8:00 AM',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(61, 144, 203, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.train,
                      color: Color.fromRGBO(61, 144, 203, 1),
                    ),
                    SizedBox(height: 15),
                    Image(
                      image: AssetImage('assets/group.png'),
                      width: 75 * w,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Agha',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 6),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            size: 16,
                            color: Color.fromRGBO(61, 144, 203, 1),
                          ),
                          SizedBox(width: 4),
                          Text(
                            '8:30 AM',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(61, 144, 203, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 7.5),
            Divider(color: Colors.blueGrey),
            SizedBox(height: 7.5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: w * 100,
                  height: 42,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: Color.fromRGBO(61, 144, 203, 1),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.5),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TrackingScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Track',
                      style: TextStyle(
                        color: Color.fromRGBO(61, 144, 203, 1),
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: w * 160,
                  height: 45,
                  child: SizedBox(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(61, 144, 203, 1),
                        minimumSize: Size(w * 200, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        DialogMessage(
                            context, 'Booking a ticket is not available yet');
                      },
                      child: Text(
                        'Book a ticket',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
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
