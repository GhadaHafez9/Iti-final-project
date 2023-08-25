import 'package:flutter/material.dart';
import 'package:flutter_application_3/DevInfo.dart';
import 'package:flutter_application_3/Welcome_screen.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
 const MyApp({Key? key}) :super (key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,// To remove the red banner
      title: 'FLASH',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: WelcomeScreen(),
    
         
    
    );
  }
  }

 class Developer extends StatelessWidget {
  const Developer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Developers App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DevelopersInfo(),
    );
  }
}


