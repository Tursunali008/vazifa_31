import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/screen/screen_2.dart';
import 'package:task_manager/utils/AppColors.dart';
import 'package:task_manager/utils/AppImages.dart';
import 'package:task_manager/utils/AppTextStyle.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 480,
            width: double.infinity,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 104, 87, 255),
                borderRadius: BorderRadius.circular(16)),
            child: Center(
              child: Image.asset(AppImages.techimg),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [SvgPicture.asset(AppIcons.scroll)],
          ),
          const SizedBox(
            height: 93,
          ),
          Column(
            children: [
              const Text(
                'Building Better',
                style: AppTextStyle.largetextstyle,
              ),
              const Text(
                'Workplace',
                style: AppTextStyle.largetextstyle,
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                'Create a unique emotional story that\n        describes better than words',
                style: AppTextStyle.smalltextstyle,
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 60,
                width: 295,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xff8B78FF),
                      Color(0xff5451D6),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.containercolor.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Screen2()),
                      );
                    },
                    child: const Text(
                      'Get Started',
                      style: AppTextStyle.whitetext,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}