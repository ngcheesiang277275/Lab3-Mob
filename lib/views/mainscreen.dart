import 'package:flutter/material.dart';
import 'package:mytutor/views/subjectspage.dart';
import 'package:mytutor/views/tutorspage.dart';
import 'package:mytutor/views/subscriptionpage.dart';
import 'package:mytutor/views/favouritespage.dart';
import 'package:mytutor/views/profilepage.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List pages = [
    const SubjectsPage(),
    const TutorsPage(),
    const SubscriptionPage(),
    const FavouritesPage(),
    const ProfilePage()
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        elevation: 10,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Subjects'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Tutors'),
          BottomNavigationBarItem(
              icon: Icon(Icons.beenhere), label: 'Subscription'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favourite'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Profile'),
        ],
      ),
    );
  }
}
