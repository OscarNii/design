import 'package:flutter/material.dart';

// ignore: camel_case_types
class rowDetails1 extends StatelessWidget {
  const rowDetails1({
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Product Design \nDemo",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  )),
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assets/img1.jpg"),
              )
            ],
          ),
          Text("12:00\n13:30")
        ],
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        fixedSize: const Size(
          360,
          90,
        ),
      ),
    );
  }
}
