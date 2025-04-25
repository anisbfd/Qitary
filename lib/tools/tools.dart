import 'package:flutter/material.dart';

Future<void> DialogMessage(BuildContext context, String message,
    {IconData icon = Icons.error_outline}) async {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.white,
      behavior: SnackBarBehavior.floating,
      dismissDirection: DismissDirection.horizontal,
      shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Color(0xff3D90CB),
          ),
          borderRadius: BorderRadius.circular(8)),
      content: Row(
        children: [
          Icon(
            icon,
            color: Color(0xff3D90CB),
            size: 18,
          ),
          SizedBox(width: 13),
          Text(
            message,
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 15,
            ),
          ),
        ],
      ),
    ),
  );
}
