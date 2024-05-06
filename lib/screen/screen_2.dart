import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:task_manager/screen/screen_3.dart';
import 'package:task_manager/utils/AppColors.dart';
import 'package:task_manager/utils/AppImages.dart';
import 'package:task_manager/utils/AppTextStyle.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 23,
          ),
          Row(
            children: [
              const SizedBox(
                width: 23,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.all(12)),
                  Text(
                    'Monday',
                    style: AppTextStyle.smalltextstyle,
                  ),
                  Text(
                    '25 October',
                    style: AppTextStyle.largetextstyle,
                  ),
                ],
              ),
              const SizedBox(
                width: 23,
              ),
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
                      Icons.search,
                      size: 34,
                    )),
              ),
              Image.asset(
                AppImages.boy,
                height: 65,
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          const Row(
            children: [
              SizedBox(
                width: 24,
              ),
              Text(
                'Hi Surf.',
                style: AppTextStyle.largetextstyle,
              ),
            ],
          ),
          const Row(
            children: [
              SizedBox(
                width: 24,
              ),
              Text(
                '5 Tasks are predning',
                style: AppTextStyle.smalltextstyle,
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(12),
              height: 99,
              width: 353,
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
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Information Architectures',
                        style: AppTextStyle.whitetext,
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Saber & Oro',
                        style: AppTextStyle.sosmall,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        AppImages.boy2,
                        height: 20,
                      ),
                      Image.asset(
                        AppImages.girl,
                        height: 20,
                      ),
                      const SizedBox(
                        width: 263,
                      ),
                      const Text(
                        'Now',
                        style: AppTextStyle.sosmall,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 23,
          ),
          const Row(
            children: [
              SizedBox(
                width: 24,
              ),
              Text(
                'Monthly Preview',
                style: AppTextStyle.largetextstyle,
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 6,
              ),
              Column(
                children: [
                  Container(
                    width: 162,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xffA9FFEA),
                          Color(0xff00B288),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp,
                      ),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Column(
                            children: [
                              Text(
                                '22',
                                style: AppTextStyle.bigtext,
                              ),
                              Text(
                                'Done',
                                style: AppTextStyle.bigtext,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 202,
                    height: 155,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xffFFA0BC),
                          Color(0xffFF1B5E),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp,
                      ),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Column(
                            children: [
                              Text(
                                '12',
                                style: AppTextStyle.bigtext,
                              ),
                              Text(
                                'Ongoing',
                                style: AppTextStyle.bigtext,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 161,
                    height: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xffFFD29D),
                          Color(0xffFF9E2D),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp,
                      ),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Column(
                            children: [
                              Text(
                                '7',
                                style: AppTextStyle.bigtext,
                              ),
                              Text(
                                'In Progress',
                                style: AppTextStyle.bigtext,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Container(
                    width: 161,
                    height: 149,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xffB1EEFF),
                          Color(0xff29BAE2),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp,
                      ),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Column(
                            children: [
                              Text(
                                '14',
                                style: AppTextStyle.bigtext,
                              ),
                              Text(
                                'Waiting For Review',
                                style: AppTextStyle.smalltextstyle2,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: GNav(tabs: [
        const GButton(
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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen3()),
            );
          },
        ),
        const GButton(
          icon: CupertinoIcons.chat_bubble_text_fill,
          text: 'Shopping',
          iconColor: AppColors.containercolor,
          textColor: AppColors.containercolor,
          iconActiveColor: AppColors.containercolor,
        ),
        const GButton(
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