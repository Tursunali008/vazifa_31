import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:task_manager/utils/AppColors.dart';
import 'package:task_manager/utils/AppImages.dart';
class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 23,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 60,
                width: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 1,
                      color: Colors.grey,
                    )),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      size: 34,
                    )),
              ),
              const SizedBox(
                width: 230,
              ),
              Image.asset(
                AppImages.boy,
                height: 55,
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: const GNav(tabs: [
        GButton(
          icon: Icons.home,
          text: 'Home',
          iconColor: AppColors.containercolor,
          textColor: AppColors.containercolor,
          iconActiveColor: AppColors.containercolor,
        ),
        GButton(
          icon: Icons.calendar_month,
          text: 'Calendar',
          iconColor: AppColors.containercolor,
          textColor: AppColors.containercolor,
          iconActiveColor: AppColors.containercolor,
        ),
        GButton(
          icon: CupertinoIcons.chat_bubble_text_fill,
          text: 'Shopping',
          iconColor: AppColors.containercolor,
          textColor: AppColors.containercolor,
          iconActiveColor: AppColors.containercolor,
        ),
        GButton(
          icon: Icons.person,
          text: 'Message',
          iconColor: AppColors.containercolor,
          textColor: AppColors.containercolor,
          iconActiveColor: AppColors.containercolor,
        ),
      ]),
    );
  }
}