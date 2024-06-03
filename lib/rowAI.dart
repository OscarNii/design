
import 'package:flutter/material.dart';

// ignore: camel_case_types
class rowAI extends StatelessWidget {
  const rowAI({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.ac_unit_outlined,
          color: Colors.white,
          size: 55.0,
        ),
        SizedBox(
          width: 16.0,
        ),
        Text(
          "Here are your AI-Based\ntime optimizations tips, Max!",
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        Row(
          children: [
            Icon(
              Icons.arrow_circle_right_rounded,
              color: Colors.white,
              size: 35.0,
            ),
          ],
        )
      ],
    );
  }
}