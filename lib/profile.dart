import 'package:flutter/material.dart';
import 'package:login_regestration_ui/account.dart';
import 'package:login_regestration_ui/home.dart';
import 'package:login_regestration_ui/setting.dart';

class MyProfileAccount extends StatefulWidget {
  const MyProfileAccount({super.key});

  @override
  State<MyProfileAccount> createState() => _MyProfileAccountState();
}

class _MyProfileAccountState extends State<MyProfileAccount> {
  int _currentIndex = 0; // Index of the currently selected tab
  final List<Widget> _pages = [
    // Define your pages/screens here
    // For example:
    MyHome(),
    MyAccount(),
    MySetting(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: (
      //
      // Center(
      //   child: Container(
      //     margin: EdgeInsets.only(top: 30, right: 30, bottom: 30, left: 30),
      //     decoration: const BoxDecoration(
      //       image: DecorationImage(
      //         image: NetworkImage(
      //           "https://www.adobe.com/in/express/feature/image/media_195c52b9fd2fbd9cb54717ec98c5628d789274db4.png?width=750&format=png&optimize=medium", // Replace with your actual image URL
      //         ),
      //         fit: BoxFit.contain, // You can adjust the fit as needed
      //       ),
      //     ),
      //
      //   ),
      // )
      // ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          // Update the selected index when a tab is pressed
          setState(() {
            _currentIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'Contact',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],

        selectedItemColor: Colors.amber[800],

      ),
    );
 }
}
