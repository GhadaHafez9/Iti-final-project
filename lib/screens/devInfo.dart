import 'package:flutter/material.dart';

class Developer {
  final String name;
  final String email;
  final String phoneNumber;

  Developer({required this.name, required this.email, required this.phoneNumber});
}

class DevelopersInfo extends StatelessWidget {
  final List<Map> developers = [

    {
    "name": "Ghada Hafez",
    "email": "ghada.hafez23@gmail.com", 
    "phone": "+20 155-345-3177"
  },
  {
   "name": "Samaher Ahmed", 
   "email": "ahmedsamaher3@gmail.com",
   "phone": "+20 102-363-7114"  
  },
  {
   "name": "Mohamed Elmahdy",
   "email": "mohamed.elmahdy1211@gmail.com",
   "phone": "+20 100-432-2437"
  },
  {
   "name": "Youssef Moatey",
   "email": "deabisyoussef@gmail.com",
   "phone": "+20 109-061-0951"
  }






  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Developers Info'),
        
      ),

      body: Column(
        children: [
          Image.asset(
            'assets/flash_logo.png',
            height: 150,
            width: 150,
          ),
          Expanded(
            child: ListView(
              children: developers.map((person) {
                return ListTile(
                  title: Text(person["name"]),
                  subtitle: Text(person["email"]),
                  trailing: Text(person["phone"]),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}