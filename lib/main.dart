import 'package:design/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calendar Test',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const HorizontalWeekCalendarPackage(),
      debugShowCheckedModeBanner: true,
    );
  }
}
