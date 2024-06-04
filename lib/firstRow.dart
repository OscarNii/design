import 'package:flutter/material.dart';

// ignore: camel_case_types
class firstRow extends StatelessWidget {
  const firstRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      label: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Earlier Today",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              )),
          Text("2 Events")
        ],
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        fixedSize: const Size(
          360,
          60,
        ),
      ),
    );
  }
}