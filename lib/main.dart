import 'package:flutter/material.dart';
import 'package:flutter_application_5/screens/firebase_options.dart';
import 'package:flutter_application_5/screens/signin_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_5/screens/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // To remove the red banner
      title: 'FLASH',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        useMaterial3: true,
      ),

      home: const SplashScreen(),
    );
  }
}
