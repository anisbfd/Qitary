import 'package:flutter/material.dart';
import 'package:trains/screens/signin.dart';
import 'package:trains/screens/singup.dart';
import 'package:trains/tools/tools.dart';

class SignScreen extends StatelessWidget {
  const SignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width / 393;
    double h = MediaQuery.of(context).size.height / 852;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: h * 852,
            width: w * 393,
            child: Image.asset(
              'assets/image.jpg',
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                top: h * 362,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Train Travel Made Simple!',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: h * 10,
                  ),
                  Text(
                    'Book tickets, track schedules,\nand manage every train trip with ease.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    height: h * 31,
                  ),
                  Text(
                    'Register now',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: h * 30,
                  ),
                  SizedBox(
                    height: h * 54,
                    width: w * 336,
                    child: ElevatedButton(
                      onPressed: () {
                        DialogMessage(
                            context, 'This feature is coming soon ...');
                      },
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        overlayColor: Colors.blue,
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xffffffff),
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
                  SizedBox(
                    height: h * 12,
                  ),
                  SizedBox(
                    height: h * 54,
                    width: w * 336,
                    child: ElevatedButton(
                      onPressed: () {
                        DialogMessage(
                          context,
                          'This feature is coming soon ...',
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        overlayColor: Colors.blue,
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xffffffff),
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
                  SizedBox(height: 15 * h),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 1 * h,
                        width: 135 * w,
                        child: Divider(
                          color: const Color(0xff6C7278),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          ' or ',
                          style: TextStyle(
                            color: const Color(0xff6C7278),
                            fontWeight: FontWeight.w600,
                            fontSize: 14 * h,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 1 * h,
                        width: 135 * w,
                        child: Divider(
                          color: const Color(0xff6C7278),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15 * h),
                  SizedBox(
                    height: h * 54,
                    width: w * 336,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        overlayColor: Colors.blue,
                        backgroundColor: Color(0xff3D90CB),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Login with password',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15 * h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don’t have an account?",
                          style: TextStyle(fontSize: 13)),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterScreen(),
                            ),
                          );
                        },
                        style: ButtonStyle(
                            overlayColor:
                                WidgetStateProperty.all(Colors.transparent)),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: const Color.fromRGBO(77, 129, 231, 1),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
