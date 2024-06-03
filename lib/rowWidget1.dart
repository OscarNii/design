// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class rowWidget1 extends StatelessWidget {
  const rowWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        fixedSize: const Size(
          150,
          50,
        ),
      ),
      onPressed: () {},
      child: const Text(
        "New(10)",
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
      ),
    );
  }
}
