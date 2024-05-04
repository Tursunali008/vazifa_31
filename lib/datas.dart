import 'package:flutter/material.dart';
import 'package:workplace/styles.dart';

// ignore: must_be_immutable
class Dates extends StatelessWidget {
  bool isselected;
  String date;
  String day;
  Dates({required this.date, required this.day, required this.isselected});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 70,
          height: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(43),
            color: isselected ? Colors.deepPurple : Colors.white,
            border: Border.all(color: Colors.black),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                date,
                style: Apptextstyle.paragraph,
              ),
              Text(
                day,
                style: Apptextstyle.heading,
              )
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}