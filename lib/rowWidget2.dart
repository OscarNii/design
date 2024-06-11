// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class rowWidgets2 extends StatelessWidget {
  const rowWidgets2({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        fixedSize: const Size(
          150,
          60,
        ),
      ),
      onPressed: () {},
      child: const Text(
        "New(10)",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    );
  }
}
