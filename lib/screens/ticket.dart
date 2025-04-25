import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:trains/tools/tools.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double vw = MediaQuery.of(context).size.width;
    double vh = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 40),
          Row(
            children: [
              SizedBox(width: 27),
              Text(
                "Boarding pass",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Center(
            child: SizedBox(
              height: vh * 0.55,
              width: vw * 0.87,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(0.05 * vw),
                          bottom: Radius.circular(0.017 * vh),
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/bg.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: vw * 0.81,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: vh * 0.07,
                            width: vw * 0.71,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(0.05 * vw),
                                bottom: Radius.circular(0.017 * vh),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      height: vh * 0.027,
                                      width: vw * 0.175,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15),
                                        ),
                                        color: Colors.blue.shade100,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            Icons.calendar_today,
                                            size: vw * 0.02,
                                            color:
                                                Color.fromRGBO(61, 144, 203, 1),
                                          ),
                                          Text(
                                            "Apr 8th,2025",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    61, 144, 203, 1),
                                                fontSize: 8,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: vh * 0.04,
                                      width: vh * 0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xff6EC207),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(100),
                                        ),
                                      ),
                                      child: Center(
                                        child: SizedBox(
                                          height: vh * 0.05,
                                          width: vh * 0.05,
                                          child: Stack(
                                            children: [
                                              Positioned.fill(
                                                child: Icon(
                                                  Symbols.train_rounded,
                                                  color: Colors.white,
                                                  weight: 250,
                                                  size: 21,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 2),
                                      height: vh * 0.027,
                                      width: vw * 0.175,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15),
                                        ),
                                        color: Colors.blue.shade100,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            color:
                                                Color.fromRGBO(61, 144, 203, 1),
                                            Icons.access_time,
                                            size: vw * 0.02,
                                          ),
                                          Text(
                                            "8:00 AM",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Color.fromRGBO(
                                                  61, 144, 203, 1),
                                              fontSize: vw * 0.02,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: vw * 0.65, child: DottedLine()),
                          Container(
                            height: vh * 0.2,
                            width: vw * 0.71,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(0.05 * vw),
                                bottom: Radius.circular(0.017 * vh),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Center(
                                    // child: Row(
                                    //   mainAxisAlignment:
                                    //       MainAxisAlignment.spaceAround,
                                    //   children: [
                                    //     Text(
                                    //       "Boumerdes",
                                    //       style: TextStyle(
                                    //         fontWeight: FontWeight.bold,
                                    //       ),
                                    //     ),
                                    //      Image.asset(
                                    //         "assets/new_line.png",
                                    //         width: 100,
                                    //       ),
                                    //     Text(
                                    //       "AGHA",
                                    //       style: TextStyle(
                                    //         fontWeight: FontWeight.bold,
                                    //       ),
                                    //     ),
                                    //   ],
                                    // ),
                                    ),
                                Stack(children: [
                                  Positioned(
                                    left: vw * 0.275,
                                    child: Container(
                                      height: vh * 0.03,
                                      width: vw * 0.2,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image:
                                              AssetImage("assets/new_line.png"),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Boumerdes",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(height: vh * 0.023),
                                          Text(
                                            "Depart",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 13.5,
                                                color: const Color.fromARGB(
                                                    255, 175, 175, 175)),
                                          ),
                                          SizedBox(height: vh * 0.0025),
                                          Text("8:00 AM",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              )),
                                          SizedBox(height: vh * 0.01),
                                          Text(
                                            "Seat",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 13.5,
                                                color: const Color.fromARGB(
                                                    255, 175, 175, 175)),
                                          ),
                                          SizedBox(height: vh * 0.0025),
                                          Text("53",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              )),
                                        ],
                                      ),
                                      SizedBox(width: vw * 0.09),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Agha",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(height: vh * 0.023),
                                          Text(
                                            "Class",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 13.5,
                                                color: const Color.fromARGB(
                                                    255, 175, 175, 175)),
                                          ),
                                          SizedBox(height: vh * 0.0025),
                                          Text("2 CL",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              )),
                                          SizedBox(height: vh * 0.01),
                                          Text(
                                            "Price",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 13.5,
                                                color: const Color.fromARGB(
                                                    255, 175, 175, 175)),
                                          ),
                                          SizedBox(height: vh * 0.0025),
                                          Text("60,00 DA",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),
                                ]),
                              ],
                            ),
                          ),
                          SizedBox(width: vw * 0.65, child: DottedLine()),
                          Container(
                            height: vh * 0.19,
                            width: vw * 0.71,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(0.05 * vw),
                                bottom: Radius.circular(0.017 * vh),
                              ),
                            ),
                            child: Center(
                              child: Container(
                                height: vh * 0.15,
                                width: vh * 0.15,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/Qr Code.png'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: vh * 0.05),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff3D90CB),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  DialogMessage(
                    context,
                    "Ticket downloaded successfully",
                    icon: Icons.download_done_outlined,
                  );
                },
                child: Text(
                  "Download Ticket",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
