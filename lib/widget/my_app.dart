import 'package:flutter/material.dart';
import 'package:tobeto_pair_one/screens/apply_screen.dart';
import 'package:tobeto_pair_one/screens/courses.screen.dart';
import 'package:tobeto_pair_one/screens/home_screen.dart';
import 'package:tobeto_pair_one/screens/notice.screen.dart';
import 'package:tobeto_pair_one/screens/poll.screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyNavigation(),
    );
  }
}

class MyNavigation extends StatefulWidget {
  @override
  _MyNavigationState createState() => _MyNavigationState();
}

class _MyNavigationState extends State<MyNavigation> {
  int _selectedIndex = 2;

  final List<Widget> _pages = [
    ApplyScreen(),
    CoursesScreen(),
    HomeScreen(),
    NoticeScreen(),
    PollScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedIconTheme: IconThemeData(color: Colors.black54),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin_sharp), label: 'Başvurular'),
          BottomNavigationBarItem(
              icon: Icon(Icons.cast_for_education), label: 'Eğitimler'),
          BottomNavigationBarItem(
              icon: Icon(Icons.task_outlined), label: 'TOBETO'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active), label: 'Duyurular'),
          BottomNavigationBarItem(
              icon: Icon(Icons.poll_outlined), label: 'Anketler'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        fixedColor: Colors.purpleAccent,
        backgroundColor: const Color.fromARGB(255, 228, 168, 239),
      ),
    );
  }
}
