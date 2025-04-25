import 'package:flutter/material.dart';
import 'package:trains/tools/tools.dart';

class TrainInfoContainer extends StatelessWidget {
  final String title;
  final String row1Label;
  final String row1Value;
  final String row2Label;
  final String row2Value;
  final String smallValue;

  const TrainInfoContainer({
    super.key,
    required this.title,
    required this.row1Label,
    required this.row1Value,
    required this.row2Label,
    required this.row2Value,
    required this.smallValue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFF3D90CB), width: 2),
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text(
                row1Label,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                row1Value,
                style: const TextStyle(
                  color: Color(0xFF3D90CB),
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Text(
                row2Label,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                row2Value,
                style: const TextStyle(
                  color: Color(0xFF3D90CB),
                  fontSize: 14,
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 81, 140, 199),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  smallValue,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TrackingScreen extends StatelessWidget {
  const TrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color.fromARGB(85, 61, 144, 203),
                    Colors.white
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            Column(
              children: [
                // Header
                Container(
                  padding: const EdgeInsets.fromLTRB(16, 40, 16, 20),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back, size: 24),
                        ),
                      ),
                      const Text(
                        'Track Train',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          color: Colors.transparent,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned.fill(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: 3.5,
                                    color: Color.fromARGB(110, 70, 200, 255),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  _buildFirstStation(),
                                  _buildStation(),
                                  _buildTrainStationWithTime(),
                                  _buildStation(),
                                  _buildLastStation(),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                const SizedBox(height: 8),
                                TrainInfoContainer(
                                  title: 'Boumerdes',
                                  row1Label: 'Arrival',
                                  row1Value: '8:00',
                                  row2Label: 'Departure',
                                  row2Value: '8:05',
                                  smallValue: 'Line 1',
                                ),
                                const SizedBox(height: 16),
                                TrainInfoContainer(
                                  title: 'Rouiba',
                                  row1Label: 'Arrival',
                                  row1Value: '09:00',
                                  row2Label: 'Departure',
                                  row2Value: '9:05',
                                  smallValue: 'Line 2',
                                ),
                                const SizedBox(height: 16),
                                TrainInfoContainer(
                                  title: 'Reghia',
                                  row1Label: 'Arrival',
                                  row1Value: '10:00',
                                  row2Label: 'Departure:',
                                  row2Value: '10:05',
                                  smallValue: 'Line 2',
                                ),
                                const SizedBox(height: 16),
                                TrainInfoContainer(
                                  title: 'Agha',
                                  row1Label: 'Arrival',
                                  row1Value: '11:00',
                                  row2Label: 'Departure',
                                  row2Value: '11:05',
                                  smallValue: 'Line 1',
                                ),
                                const SizedBox(height: 8),
                                TrainInfoContainer(
                                  title: 'Algiers',
                                  row1Label: 'Arrival',
                                  row1Value: '8:00',
                                  row2Label: 'Departure',
                                  row2Value: '8:05',
                                  smallValue: 'Line 1',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        DialogMessage(context, 'Train tracking refreshed!');
                      },
                      child: const Text(
                        'Refresh',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
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

  Widget _buildStation() {
    return Container(
      width: 24,
      height: 24,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.fromBorderSide(
          BorderSide(color: Colors.blue, width: 3),
        ),
      ),
    );
  }

  Widget _buildFirstStation() {
    return Container(
      width: 24,
      height: 24,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.fromBorderSide(
          BorderSide(color: Colors.blue, width: 3),
        ),
      ),
    );
  }

  Widget _buildLastStation() {
    return Container(
      width: 24,
      height: 24,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.fromBorderSide(
          BorderSide(color: Colors.blue, width: 3),
        ),
      ),
    );
  }

  Widget _buildTrainStationWithTime() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 27.5,
          height: 27.5,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.fromBorderSide(
              BorderSide(color: Colors.blue, width: 3),
            ),
          ),
          child: const Icon(
            Icons.train,
            size: 16,
            color: Colors.blue,
          ),
        ),
        Positioned(
          top: -25,
          left: -50,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Text(
              '20 min',
              style: TextStyle(
                color: Colors.green[700],
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
