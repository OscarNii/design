import 'package:flutter/material.dart';

// ignore: camel_case_types
class rowDetails2 extends StatelessWidget {
  const rowDetails2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      label: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
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
                        color: Colors.deepPurple)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("assets/img.jpg"),
                      backgroundColor: Colors.white,
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("assets/img2.jpg"),
                      backgroundColor: Colors.white,
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("assets/img3.jpg"),
                      backgroundColor: Colors.white,
                    ),
                  ],
                )
              ],
            ),
            Text(
              "12:00\n13:30",
              style: TextStyle(color: Colors.deepPurple),
            )
          ],
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        fixedSize: const Size(
          360,
          110,
        ),
      ),
    );
  }
}
