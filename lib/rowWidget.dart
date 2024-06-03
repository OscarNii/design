import 'package:flutter/material.dart';

// ignore: camel_case_types
class rowWidget extends StatelessWidget {
  const rowWidget({
    super.key,
  });

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
        "All",
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
