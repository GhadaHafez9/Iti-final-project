import 'package:flutter/material.dart';
import 'package:flutter_application_5/screens/page1.dart';
import 'package:flutter_application_5/screens/categories_screen.dart';
import 'package:flutter_application_5/screens/page3.dart';

class HomeScreen extends StatefulWidget {
  String email;
  HomeScreen({super.key, required this.email});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  List<Widget> pages = [
    Page1(), 
    CategoriesListPage(),
    Page3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor: Colors.deepPurple, toolbarHeight: 40,
        title: Text(''),
        
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigoAccent,
              ),
              child: Text(
                'Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          
           
          
        ],
        ),
      ),
      body : pages[currentIndex] ,

      bottomNavigationBar: BottomNavigationBar(
        currentIndex : currentIndex ,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label:" Home" , backgroundColor: Colors.blueAccent ),
         BottomNavigationBarItem(icon: Icon(Icons.category), label:" Categories" , backgroundColor:  Colors.blueAccent ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label:" My Profile", backgroundColor: Colors.blueAccent  ),
           
          
      ],
      onTap: (value){
        currentIndex = value ;
        setState(() {});
        print(value);
      },

      ),
    );
  }
}