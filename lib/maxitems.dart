import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Maxitems extends StatelessWidget {
  String task;
  String number;
  Color color;
  Maxitems({required this.color, required this.number, required this.task});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 182,
            height: 170,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: color),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  task,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            )),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}