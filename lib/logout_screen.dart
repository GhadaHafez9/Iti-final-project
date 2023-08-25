import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/HomeScreen.dart';
import 'package:flutter_application_3/NavBar.dart';
import 'package:flutter_application_3/sign.dart';

class LogOut extends StatefulWidget {
  const LogOut({super.key});

  @override
  State<LogOut> createState() => _LogOutState();
}

class _LogOutState extends State<LogOut> {
  @override
  Widget build(BuildContext context) {
     return Scaffold( 
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
      
        },icon:Icon(Icons.arrow_back_ios ),),
      ),
  
     body: Center(
     child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Image.asset(
        'assets/New 2.png',
        height: 150,
      ),
       Text(
                'FLASH',
                style: TextStyle(
                  fontSize: 24,
                 // fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ), 
       ),
        SizedBox(height: 20),
        Column(
          children: [
           
            SizedBox(height: 20),
            CupertinoButton.filled(
              child: Text('Log out'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignScreen()),
                );
              },
            ),
            Text(
              'You sure wanna log out?',
              style: TextStyle(color: Colors.brown, fontSize: 15),
            )
          ],
          
        ),
      ],
    ),
  ),
);
  } 
}