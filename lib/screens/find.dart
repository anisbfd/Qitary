import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:trains/screens/track.dart';
import 'package:trains/tools/tools.dart';

class FindTrain extends StatefulWidget {
  const FindTrain({super.key});

  @override
  State<FindTrain> createState() => _FindTrainState();
}

class _FindTrainState extends State<FindTrain> {
  TextEditingController _departureController =
      TextEditingController(text: 'Boumerdes');
  TextEditingController _arrivalController =
      TextEditingController(text: 'Agha');

  final TextEditingController _dateController = TextEditingController(
    text: '${DateFormat.yMMMEd().format(DateTime.now())}',
  );
  final TextEditingController _timeController = TextEditingController(
    text: '${DateFormat.jm().format(DateTime.now())}',
  );

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width / 393;
    double h = MediaQuery.of(context).size.height / 852;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.5, vertical: 15),
            child: Text(
              'Hello, name',
              style: TextStyle(
                color: const Color.fromARGB(255, 125, 125, 125),
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.5),
            child: Text(
              'Find your train',
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontSize: 22.5,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(7.5 * w),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(249, 249, 249, 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0,
                                    vertical: 25,
                                  ),
                                  child: Container(
                                    height: 50,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          offset: Offset(0, 1),
                                          blurRadius: 1,
                                          spreadRadius: 0,
                                          color: const Color.fromARGB(
                                            26,
                                            0,
                                            0,
                                            0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 9.5,
                                        horizontal: 18,
                                      ),
                                      child: Stack(
                                        children: [
                                          Text(
                                            'Deaparture Station',
                                            style: TextStyle(
                                              fontSize: 9.5,
                                              fontWeight: FontWeight.w500,
                                              color: const Color.fromARGB(
                                                100,
                                                0,
                                                0,
                                                0,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: SizedBox(
                                              height: 18,
                                              child: TextFormField(
                                                controller:
                                                    _departureController,
                                                cursorColor: Color(0xff3D90CB),
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 15,
                                                ),
                                                cursorHeight: 14,
                                                // cursorWidth: 1.5,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  contentPadding:
                                                      EdgeInsets.zero,
                                                  border: OutlineInputBorder(
                                                    borderSide: BorderSide.none,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0,
                                  ),
                                  child: Container(
                                    height: 50,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          offset: Offset(0, 1),
                                          blurRadius: 1,
                                          spreadRadius: 0,
                                          color: const Color.fromARGB(
                                            26,
                                            0,
                                            0,
                                            0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 9.5,
                                        horizontal: 18,
                                      ),
                                      child: Stack(
                                        children: [
                                          Text(
                                            'Arrival Station',
                                            style: TextStyle(
                                              fontSize: 9.5,
                                              fontWeight: FontWeight.w500,
                                              color: const Color.fromARGB(
                                                100,
                                                0,
                                                0,
                                                0,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: SizedBox(
                                              height: 18,
                                              child: TextFormField(
                                                controller: _arrivalController,
                                                cursorColor: Color(0xff3D90CB),
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 15,
                                                ),
                                                cursorHeight: 14,
                                                // cursorWidth: 1.5,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  contentPadding:
                                                      EdgeInsets.zero,
                                                  border: OutlineInputBorder(
                                                    borderSide: BorderSide.none,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              top: 70,
                              right: 50,
                              child: GestureDetector(
                                onTap: () {
                                  final str = _departureController.text;
                                  setState(() {
                                    _departureController = _arrivalController;
                                    _arrivalController =
                                        TextEditingController(text: str);
                                  });
                                },
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(61, 144, 203, 1),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.swap_vert,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15.0,
                            vertical: 25,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 50,
                                  margin: EdgeInsets.only(right: 8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(17),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0, 1),
                                        blurRadius: 1,
                                        spreadRadius: 0,
                                        color:
                                            const Color.fromARGB(26, 0, 0, 0),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 9.5,
                                      horizontal: 18,
                                    ),
                                    child: Stack(
                                      children: [
                                        Text(
                                          'Date',
                                          style: TextStyle(
                                            fontSize: 9.5,
                                            fontWeight: FontWeight.w500,
                                            color: const Color.fromARGB(
                                              100,
                                              0,
                                              0,
                                              0,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: SizedBox(
                                            height: 18,
                                            child: TextFormField(
                                              readOnly: true,
                                              controller: _dateController,
                                              onTap: () => _selectDate(),
                                              cursorColor: Color(0xff3D90CB),
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 15,
                                              ),
                                              cursorHeight: 14,
                                              decoration: InputDecoration(
                                                isDense: true,
                                                contentPadding: EdgeInsets.zero,
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide.none,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 50,
                                  margin: EdgeInsets.only(left: 8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(17),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0, 1),
                                        blurRadius: 1,
                                        spreadRadius: 0,
                                        color:
                                            const Color.fromARGB(26, 0, 0, 0),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 9.5,
                                      horizontal: 18,
                                    ),
                                    child: Stack(
                                      children: [
                                        Text(
                                          'Time',
                                          style: TextStyle(
                                            fontSize: 9.5,
                                            fontWeight: FontWeight.w500,
                                            color: const Color.fromARGB(
                                              100,
                                              0,
                                              0,
                                              0,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: SizedBox(
                                            height: 18,
                                            child: TextFormField(
                                              readOnly: true,
                                              controller: _timeController,
                                              onTap: () => _selectTime(),
                                              cursorColor: Color(0xff3D90CB),
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 15,
                                              ),
                                              cursorHeight: 14,
                                              decoration: InputDecoration(
                                                isDense: true,
                                                contentPadding: EdgeInsets.zero,
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide.none,
                                                ),
                                              ),
                                            ),
                                          ),
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
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              minimumSize:
                                  WidgetStateProperty.all(Size(350, 55)),
                              backgroundColor: WidgetStateProperty.all(
                                Color.fromRGBO(61, 144, 203, 1),
                              ),
                              shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              ),
                            ),
                            onPressed: () {
                              DialogMessage(
                                  context, 'This feature is not yet available',
                                  icon: Icons.search);
                            },
                            child: Text(
                              'Search',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.5, vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recently Booked',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    DialogMessage(
                      context,
                      'This feature is not yet available',
                    );
                  },
                  child: Text(
                    'See all',
                    style: TextStyle(
                      color: const Color.fromRGBO(61, 144, 203, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12.5),
            child: Container(
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
                              width: 90 * w,
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
                          width: w * 120,
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
                          width: w * 180,
                          height: 45,
                          child: SizedBox(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromRGBO(61, 144, 203, 1),
                                minimumSize: Size(w * 200, 50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: () {
                                DialogMessage(
                                  context,
                                  'This feature is not yet available',
                                );
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
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _selectDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2025),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      setState(() {
        _dateController.text = DateFormat.yMMMEd().format(picked);
      });
    }
  }

  Future<void> _selectTime() async {
    TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (picked != null) {
      final selectedTime = DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        picked.hour,
        picked.minute,
      );

      setState(() {
        _timeController.text = DateFormat.jm().format(selectedTime);
      });
    }
  }
}
