import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workplace/mainpage.dart';
import 'package:workplace/styles.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 400,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/image.png'),
                    fit: BoxFit.cover)),
          ),
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            height: 532,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                    padding: EdgeInsets.only(
                        top: 60, left: 60, right: 60, bottom: 20)),
                Text(
                  'Building Better Workplaces',
                  style: GoogleFonts.aboreto(
                      fontWeight: FontWeight.bold, fontSize: 40),
                ),
                const Text(
                  'Create a unique emotional story that describes better than words',
                  style: Apptextstyle.heading,
                ),
                const SizedBox(
                  height: 100,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return Mainpage();
                    }));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 70,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 20),
                              blurRadius: 10,
                              spreadRadius: 5)
                        ],
                        gradient: LinearGradient(colors: [
                          Colors.deepPurpleAccent.shade100,
                          Colors.deepPurple
                        ]),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}