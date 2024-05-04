import 'package:flutter/material.dart';
import 'package:workplace/datas.dart';
import 'package:workplace/homepage.dart';
import 'package:workplace/ongoingtask.dart';
import 'package:workplace/styles.dart';

class Taskpage extends StatelessWidget {
  const Taskpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black),
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://celebbio.org/wp-content/cache/thumb/d8/03187aea4f077d8_400x400.jpg'))),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Icon(Icons.arrow_back),
                  Text('Mar'),
                  Spacer(),
                  Text(
                    'April',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Spacer(),
                  Text('May'),
                  Icon(Icons.navigate_next_rounded),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Dates(date: '7', day: 'Mon', isselected: false),
                    Dates(date: '8', day: 'Tue', isselected: true),
                    Dates(date: '9', day: 'Thur', isselected: false),
                    Dates(date: '10', day: 'Wed', isselected: false),
                    Dates(date: '11', day: 'Fri', isselected: false),
                    Dates(date: '12', day: 'Sat', isselected: false),
                    Dates(date: '13', day: 'Sun', isselected: false),
                    Dates(date: '14', day: 'Mon', isselected: false),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Ongoing',
                style: Apptextstyle.paragraph,
              ),
              Ongoing(
                  firsttime: '10:00',
                  secondtime: '11:00',
                  colors: Colors.deepOrange),
              Row(
                children: [
                  const Text(
                    '10:00',
                    style: Apptextstyle.heading,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.deepPurple),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 290,
                    height: 2,
                    decoration: const BoxDecoration(color: Colors.deepPurple),
                  ),
                ],
              ),
              Ongoing(
                  firsttime: '11:00',
                  secondtime: '12:00',
                  colors: Colors.deepPurple),
              Ongoing(
                  firsttime: '13:00',
                  secondtime: '14:00',
                  colors: Colors.green),
              Ongoing(
                  firsttime: '14:00',
                  secondtime: '15:00',
                  colors: Colors.amber),
              Ongoing(
                  firsttime: '15:00', secondtime: '16:00', colors: Colors.blue),
              Ongoing(
                  firsttime: '16:00', secondtime: '17:00', colors: Colors.grey),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.deepPurple,
            icon: IconButton(
                icon: const Icon(
                  Icons.home,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Homepage()));
                }),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
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
