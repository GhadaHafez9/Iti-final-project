// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  
 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
      
        },icon:Icon(Icons.arrow_back_ios ),),
        
        backgroundColor: Colors.deepPurple,
        title: Text("About us"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
           Image.asset(
                'assets/New 2.png', 
                width: 180,
                height: 150,
              ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.deepPurple[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Welcome to our Flash app, where technology meets convenience. With our app, you can effortlessly explore the world of phones, laptops, smart watches and Tablets ,unlocking a realm of possibilities at your fingertips. Discover the latest models and cutting-edge features that redefine the way we connect, work, and entertain.',
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.deepPurple[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Our app provides you a seamless user experience offering detailed information about our products, trusted reviews, and personalized recommendations. You can explore, compare and make informed decisions that align with your preferences and needs.',
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.deepPurple[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Feel free to customize and adapt this abstract to match the specific features and value proposition of your app.',
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}