import 'package:flutter/material.dart';
import 'package:trains/screens/sign.dart';
import 'package:trains/screens/singup.dart';
import 'package:trains/tools/navbar.dart';
import 'package:trains/tools/tools.dart';

bool passShow = false;
bool? isChecked = false;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width / 393;
    double h = MediaQuery.of(context).size.height / 852;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 160, 194, 217),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            top: 110 * h,
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
                            builder: (context) => SignScreen(),
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
                    child: Text('Login',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold)),
                  )),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? ",
                        style: TextStyle(fontSize: 13)),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Register",
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
                padding: EdgeInsets.only(top: 22.5, left: 22.5),
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
                padding: EdgeInsets.symmetric(horizontal: 22.5, vertical: 5),
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
                padding: EdgeInsets.only(top: 10, left: 22.5),
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
                padding: EdgeInsets.symmetric(horizontal: 22.5, vertical: 5),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 19, vertical: 2.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: FittedBox(
                            child: Checkbox(
                              value: isChecked,
                              activeColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              side: BorderSide(
                                  color: Color.fromARGB(255, 180, 180, 180),
                                  width: 1),
                              onChanged: (newBool) {
                                setState(() {
                                  isChecked = newBool;
                                });
                              },
                            ),
                          ),
                        ),
                        Text(
                          'Remember me',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 125, 125, 125),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        DialogMessage(
                            context, 'This feature is coming soon ...');
                      },
                      child: Text(
                        "Forgot Password ? ",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15 * h,
              ),
              Center(
                child: SizedBox(
                  height: h * 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      minimumSize: WidgetStateProperty.all(
                        Size(290, 55),
                      ),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NavBar(),
                        ),
                      );
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 1 * h,
                        width: 125 * w,
                        child: Divider(
                          color: const Color.fromARGB(255, 110, 110, 110),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(' or ',
                            style: TextStyle(
                                color: const Color.fromARGB(255, 110, 110, 110),
                                fontWeight: FontWeight.bold,
                                fontSize: 14 * h)),
                      ),
                      SizedBox(
                        height: 1 * h,
                        width: 125 * w,
                        child: Divider(
                          color: const Color.fromARGB(255, 110, 110, 110),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  height: h * 50,
                  width: w * 320,
                  child: ElevatedButton(
                    onPressed: () {
                      DialogMessage(context, 'This feature is coming soon ...');
                    },
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.transparent,
                      overlayColor: Colors.blue,
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Color(0xffEFF0F6),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 18,
                          width: 18,
                          child: Image.asset('assets/google.png'),
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          ' Sign in with Google',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: h * 12,
              ),
              Center(
                child: SizedBox(
                  height: h * 50,
                  width: w * 320,
                  child: ElevatedButton(
                    onPressed: () {
                      DialogMessage(context, 'This feature is coming soon ...');
                    },
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.transparent,
                      overlayColor: Colors.blue,
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Color(0xffEFF0F6),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 18,
                          width: 18,
                          child: Image.asset('assets/facebook.png'),
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          ' Sign in with Facebook',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: h * 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
