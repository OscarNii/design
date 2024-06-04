import 'package:design/rowDetails1.dart';
import 'package:design/rowWidget1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:horizontal_week_calendar/horizontal_week_calendar.dart';
import 'package:intl/intl.dart';

import 'firstRow.dart';
import 'rowAI.dart';
import 'rowWidget.dart';

class HorizontalWeekCalendarPackage extends StatefulWidget {
  const HorizontalWeekCalendarPackage({super.key});

  @override
  State<HorizontalWeekCalendarPackage> createState() =>
      _HorizontalWeekCalendarPackageState();
}

class _HorizontalWeekCalendarPackageState
    extends State<HorizontalWeekCalendarPackage> {
  var selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Center(
          child: Text(
            "Horizontal Test Week Calendar",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              calenderPoint(theme),
              const SizedBox(height: 10),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(75),
                    color: Colors.deepPurple,
                  ),
                  height: 110,
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {},
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          rowAI(),
                        ],
                      ))),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(75),
                  color: Colors.grey[300],
                ),
                height: 600,
                width: double.infinity,
                child: const Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          rowWidget(),
                          rowWidget1(),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      firstRow(),
                      SizedBox(height: 10),
                      rowDetails1(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding calenderPoint(ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10.0,
        right: 1.0,
        left: 1.0,
      ),
      child: Container(
        height: 220,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[300],
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: Column(
            children: [
              HorizontalWeekCalendar(
                weekStartFrom: WeekStartFrom.Monday,
                activeBackgroundColor: Colors.deepPurple,
                activeTextColor: Colors.white,
                inactiveBackgroundColor: Colors.deepPurple.withOpacity(.3),
                inactiveTextColor: Colors.black,
                disabledTextColor: Colors.grey,
                disabledBackgroundColor: Colors.grey.withOpacity(.3),
                activeNavigatorColor: Colors.deepPurple,
                inactiveNavigatorColor: Colors.grey,
                monthColor: Colors.deepPurple,
                onDateChange: (date) {
                  setState(() {
                    selectedDate = date;
                  });
                },
                borderRadius: BorderRadius.circular(5),
                showNavigationButtons: true,

                monthFormat: "MMMM yyyy",
                minDate: DateTime(2024, 1, 1),
                maxDate: DateTime(2026, 12, 31),
                initialDate: DateTime(2024, 6, 3),
                // initialDate: DateTime(2024, 4, 6),
              ),
              const SizedBox(
                height: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Selected Date",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleMedium!.copyWith(
                      color: Colors.deepPurple,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    DateFormat('dd MMM yyyy').format(selectedDate),
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleLarge!.copyWith(
                      color: Colors.deepPurple,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
