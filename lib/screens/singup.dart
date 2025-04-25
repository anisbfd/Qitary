import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'sign.dart';
import 'signin.dart';
import 'package:trains/tools/navbar.dart';

bool passShow = false;
bool? isChecked = false;

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _dataController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width / 393;
    double h = MediaQuery.of(context).size.height / 852;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 160, 194, 217),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            top: 70 * h,
            left: 22.5 * w,
            right: 22.5 * w,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7.5, vertical: 4),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignScreen(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        overlayColor:
                            WidgetStateProperty.all(Colors.transparent),
                      ),
                      icon: Icon(Icons.arrow_back, size: 20))),
              Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Center(
                    child: Text('Register',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold)),
                  )),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account? ",
                        style: TextStyle(fontSize: 13)),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontSize: 13),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 22.5, left: 22.5, right: 22.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'First name',
                            style: TextStyle(
                              color: Color.fromARGB(255, 125, 125, 125),
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 5 * h),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'First name',
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 148, 148, 148)),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7.5),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 200, 200, 200),
                                  width: 0.8,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7.5),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 200, 200, 200),
                                  width: 0.8,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 25 * w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Second name',
                            style: TextStyle(
                              color: Color.fromARGB(255, 125, 125, 125),
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 5 * h),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Second name',
                              hintStyle: TextStyle(
                                color: Color.fromARGB(255, 148, 148, 148),
                              ),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7.5),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 200, 200, 200),
                                  width: 0.8,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7.5),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 200, 200, 200),
                                  width: 0.8,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 17.5, left: 22.5),
                child: Text(
                  'Email',
                  style: TextStyle(
                    color: Color.fromARGB(255, 125, 125, 125),
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.5, vertical: 2.5),
                child: SizedBox(
                  height: 50 * h,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 148, 148, 148)),
                      contentPadding: EdgeInsets.symmetric(horizontal: 12),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7.5),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 200, 200, 200),
                          width: 0.8,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7.5),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 200, 200, 200),
                          width: 0.8,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 17.5, left: 22.5),
                child: Text(
                  'Phone Number',
                  style: TextStyle(
                    color: Color.fromARGB(255, 125, 125, 125),
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.5, vertical: 2.5),
                child: SizedBox(
                  height: 50 * h,
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(9),
                    ],
                    decoration: InputDecoration(
                      prefixIcon: Container(
                        width: 60, // enough space for +213
                        alignment: Alignment.center,
                        child: Text(
                          '+213',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      hintText: 'Phone Number',
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 148, 148, 148),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 15),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7.5),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 200, 200, 200),
                          width: 0.8,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7.5),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 200, 200, 200),
                          width: 0.8,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 17.5, left: 22.5),
                child: Text(
                  'Password',
                  style: TextStyle(
                    color: Color.fromARGB(255, 125, 125, 125),
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.5, vertical: 2.5),
                child: SizedBox(
                  height: 50 * h,
                  child: TextField(
                    obscureText: !passShow,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 148, 148, 148)),
                      contentPadding: EdgeInsets.symmetric(horizontal: 12),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7.5),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 200, 200, 200),
                          width: 0.8,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7.5),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 200, 200, 200),
                          width: 0.8,
                        ),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          passShow ? Icons.visibility : Icons.visibility_off,
                          color: Color.fromARGB(255, 148, 148, 148),
                          size: 15,
                        ),
                        onPressed: () {
                          setState(() {
                            passShow = !passShow;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 17.5, left: 22.5),
                child: Text(
                  'Date of Birth',
                  style: TextStyle(
                    color: Color.fromARGB(255, 125, 125, 125),
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.5, vertical: 2.5),
                child: SizedBox(
                  height: 50 * h,
                  child: MouseRegion(
                    child: TextField(
                      readOnly: true,
                      controller: _dataController,
                      onTap: () {
                        _selectDate();
                      },
                      decoration: InputDecoration(
                        hintText: 'Date Of Birth',

                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 148, 148, 148)),
                        suffixIcon: Icon(
                          Icons.calendar_today,
                          size: 15,
                        ),
                        //filled: true,
                        contentPadding: EdgeInsets.symmetric(horizontal: 12),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.5),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 200, 200, 200),
                            width: 0.8,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.5),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 200, 200, 200),
                            width: 0.8,
                          ),
                        ),
                      ),
                      cursorColor: Colors.transparent,
                      keyboardType: TextInputType.none,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20 * h),
              Center(
                child: SizedBox(
                  height: h * 50,
                  width: w * 320,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      minimumSize: WidgetStateProperty.all(Size(300, 55)),
                      backgroundColor: WidgetStateProperty.all(
                          Color.fromRGBO(61, 144, 203, 1)),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0))),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NavBar(),
                        ),
                      );
                    },
                    child:
                        Text('Register', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              SizedBox(height: 30 * h),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1925),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      setState(() {
        _dataController.text = DateFormat('dd/MM/yyyy').format(picked);
      });
    }
  }
}
