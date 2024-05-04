import 'package:flutter/material.dart';
import 'package:workplace/styles.dart';

// ignore: must_be_immutable
class Ongoing extends StatelessWidget {
  String firsttime;
  String secondtime;
  Color colors;
  Ongoing(
      {required this.firsttime,
      required this.secondtime,
      required this.colors});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 130,
          child: Row(
            children: [
              Column(
                children: [
                  Text(
                    firsttime,
                    style: Apptextstyle.heading,
                  ),
                  const Spacer(),
                  Text(
                    secondtime,
                    style: Apptextstyle.heading,
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(10),
                width: 320,
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      colors: [Colors.deepPurpleAccent.shade100, colors]),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Information Technologies',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    const Text('Sales & Oro',
                        style: TextStyle(color: Colors.white, fontSize: 14)),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://fcb-abj-pre.s3.amazonaws.com/img/jugadors/MESSI.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://tmssl.akamaized.net/images/foto/galerie/cristiano-ronaldo-al-nassr-2023-1692731063-114594.jpg?lm=1692731118'),
                                  fit: BoxFit.cover)),
                        ),
                        const Spacer(),
                        const Text(
                          'Now',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}