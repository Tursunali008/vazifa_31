import 'package:flutter/material.dart';
import 'package:workplace/maxitems.dart';
import 'package:workplace/minitems.dart';
import 'package:workplace/styles.dart';
import 'package:workplace/taskpage.dart';

class Mainpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.all(20)),
                      Text(
                        'Monday',
                        style: Apptextstyle.heading,
                      ),
                      Text(
                        '25 October',
                        style: Apptextstyle.paragraph,
                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black)),
                    child: const Icon(
                      Icons.search_sharp,
                      size: 40,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black),
                        image: const DecorationImage(
                            image: NetworkImage(
                                'https://celebbio.org/wp-content/cache/thumb/d8/03187aea4f077d8_400x400.jpg'))),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Hi Oper 🤝',
                style: Apptextstyle.paragraph,
              ),
              const Text(
                '5 Tasks are predning',
                style: Apptextstyle.heading,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(colors: [
                    Colors.deepPurpleAccent.shade100,
                    Colors.deepPurple
                  ]),
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
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Monthly Preview',
                style: Apptextstyle.paragraph,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Maxitems(
                      color: Colors.red, number: '17', task: 'In progress'),
                  Miniitems(color: Colors.amber, number: '7', task: 'Done'),
                ],
              ),
              Row(
                children: [
                  Miniitems(color: Colors.green, number: '27', task: 'In list'),
                  Maxitems(color: Colors.blue, number: '77', task: 'Pochti'),
                ],
              ),
              Row(
                children: [
                  Maxitems(
                      color: Colors.orange, number: '17', task: 'In progress'),
                  Miniitems(
                      color: Colors.cyanAccent, number: '7', task: 'Done'),
                ],
              ),
              Row(
                children: [
                  Miniitems(color: Colors.green, number: '27', task: 'In list'),
                  Maxitems(color: Colors.blue, number: '77', task: 'Pochti'),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
            backgroundColor: Colors.deepPurple,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                icon: const Icon(
                  Icons.calendar_month,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Taskpage()));
                }),
            label: 'Calendar',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          )
        ],
      ),
    );
  }
}