import 'package:flutter/material.dart';
import 'package:workplace/homepage.dart';

void main() {
  runApp(const Workplace());
}

class Workplace extends StatelessWidget {
  const Workplace({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}