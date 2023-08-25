import 'package:flutter/material.dart';
import 'package:flutter_application_5/screens/aboutUs.dart';
import 'package:flutter_application_5/screens/devInfo.dart';
import 'package:flutter_application_5/screens/logout_screen.dart';
import 'package:flutter_application_5/screens/homepage.dart';
import 'package:flutter_application_5/screens/categories_screen.dart';
import 'package:flutter_application_5/screens/user_profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required String email});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> pages = [Page1() , CategoriesListPage(), UserProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
      actions: [
      Padding(
      padding: EdgeInsets.only(right: 16.0),
      child: Image.asset(
        'assets/flash_logo.png',
        height: 40,
      ),
    ),
  ],  
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                image: DecorationImage(
                  image: AssetImage('assets/flash_logo.png'),
                  fit: BoxFit.contain,
                ),
              ),
              child: Text(
                'FLASH',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.pending),
              title: Text('About Us'),
              onTap: () {
                // Handle drawer item tap
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutUs()));
              },
            ),
            ListTile(
              leading: Icon(Icons.people_sharp),
              title: Text('Developers Info'),
              onTap: () {
                // Handle drawer item tap
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DevelopersInfo()));
              },
            ),
            ListTile(
              leading: Icon(Icons.logout_rounded),
              title: Text('Log out'),
              onTap: () {
                // Handle drawer item tap
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => LogOut()));
              },
            )
          ],
        ),
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: " Home",
            backgroundColor: Colors.deepPurple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: " Categories",
            backgroundColor: Colors.deepPurple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: " My Profile",
            backgroundColor: Colors.deepPurple,
          ),
        ],
        onTap: (value) {
          currentIndex = value;
          setState(() {});
          print(value);
        },
      ),
    );
  }
}
