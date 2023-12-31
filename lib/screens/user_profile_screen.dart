import 'package:flutter/material.dart';
import 'package:flutter_application_5/screens/logout_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  String email = "";

  getCachedEmail() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    email = prefs.getString('email') ?? 'null';
    setState(() {});
  }

  @override
  void initState() {
    getCachedEmail();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('profile'),
      //   actions: [

      //   ],
      // ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              leading: const Text(
                'Profile',
                style: TextStyle(fontSize: 20),
              ),
              trailing: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.settings)),
            ),
            Center(
                child: CircleAvatar(
              backgroundImage: const AssetImage('assets/flash_logo.png'),
              radius: MediaQuery.sizeOf(context).width / 6,
            )),
            const SizedBox(height: 20),
            const Text('Flash Team'),
            Text(email),
            const SizedBox(height: 20),
            Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: const Card(
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Manage Profile'),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                InkWell(
                  onTap: () {},
                  child: const Card(
                    child: ListTile(
                      leading: Icon(Icons.local_grocery_store_rounded),
                      title: Text('My added products'),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                InkWell(
                  onTap: () {},
                  child: const Card(
                    child: ListTile(
                      leading: Icon(Icons.attach_money),
                      title: Text('Payment Methods'),
                    ),
                  ),
                ),
                const SizedBox(height: 70),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LogOut()));
                  },
                  child: Card(
                    elevation: 20,
                    clipBehavior: Clip.antiAlias,
                    child: Container(
                      height: 50,
                      width: MediaQuery.sizeOf(context).width / 2,
                      color: Colors.deepPurple,
                      child: const Center(
                        child: Text(
                          'Logout',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
