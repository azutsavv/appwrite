import 'package:flutter/material.dart';
import 'package:uusig_appwrite/home/home.dart';
import 'package:uusig_appwrite/home/signup/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/signup',
      routes: {
        '/home' :(context) => const homepage(),
        '/signup':(context) => const SignUP()
      },
    );
  }
}

