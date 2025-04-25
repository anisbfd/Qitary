import 'package:flutter/material.dart';
import 'package:trains/screens/find.dart';
import 'package:trains/screens/schedule.dart';

class Trains extends StatefulWidget {
  const Trains({super.key});

  @override
  State<Trains> createState() => _TrainsState();
}

class _TrainsState extends State<Trains> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Color.fromRGBO(184, 204, 220, 1)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      bottom: BorderSide(color: Colors.grey, width: 0.5),
                      top: BorderSide(color: Colors.grey, width: 0.5),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TabBar(
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.grey,
                          labelStyle:
                              const TextStyle(fontWeight: FontWeight.bold),
                          tabs: [
                            Tab(text: "Find your train"),
                            Tab(text: "Train schedules"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //Divider(height: 1, color: Colors.blue),
                Expanded(
                  child: TabBarView(
                    children: [FindTrain(), TrainSchedules()],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
