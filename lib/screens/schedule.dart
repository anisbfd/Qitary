import 'package:flutter/material.dart';
import 'package:trains/tools/tools.dart';

class TrainSchedules extends StatefulWidget {
  const TrainSchedules({super.key});

  @override
  State<TrainSchedules> createState() => _TrainSchedulesState();
}

class _TrainSchedulesState extends State<TrainSchedules> {
  // Track selection state for each station
  final Map<String, bool> _selectedStations = {
    'Algiers East': false,
    'Algiers West': false,
    'Algiers Zeralda': true,
    'Tizi Ouzou': false,
    'Airport': true,
    'Local Trains': false,
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.only(top: 30, left: 12.5),
            child: Text("Train's schedule",
                style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 22.5,
                    fontWeight: FontWeight.bold))),
        Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: _selectedStations.keys.map((stationName) {
              return station(stationName, _selectedStations[stationName]!);
            }).toList(),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Text('Last Update: Monday, April 14\nwww.sntf.dz',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                  )),
            ))
      ],
    );
  }

  Widget station(String title, bool isSelected) {
    double w = MediaQuery.of(context).size.width / 393;
    double h = MediaQuery.of(context).size.height / 852;

    return Padding(
      padding: EdgeInsets.all(10 * w),
      child: Container(
        height: h * 65,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(100, 0, 0, 0),
              blurRadius: 0.25,
              offset: Offset(0, 0.25),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    if (isSelected == false) {
                      DialogMessage(context, 'Downloaded successfully!',
                          icon: Icons.download_done_rounded);
                    } else {
                      DialogMessage(context, 'Removed from downloads',
                          icon: Icons.file_download_off_rounded);
                    }
                    setState(() {
                      _selectedStations[title] = !_selectedStations[title]!;
                    });
                  },
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 17.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                child: VerticalDivider(
                  color: Colors.grey,
                  thickness: 0.5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: GestureDetector(
                  onTap: () {
                    if (isSelected == false) {
                      DialogMessage(context, 'Downloaded successfully!',
                          icon: Icons.download_done_rounded);
                    } else {
                      DialogMessage(context, 'Removed from downloads',
                          icon: Icons.file_download_off_rounded);
                    }
                    setState(() {
                      _selectedStations[title] = !_selectedStations[title]!;
                    });
                  },
                  child: isSelected
                      ? Image(
                          image: AssetImage('assets/done.png'),
                          width: 25,
                          height: 25)
                      : Image(
                          image: AssetImage('assets/download.png'),
                          width: 25,
                          height: 25),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
