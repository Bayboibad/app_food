import 'package:app_food/home/home_screen.dart';
import 'package:app_food/login/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Fixed this line

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppFood',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffFF6D04)),
        // Removed useMaterial3 as it's not a valid property
      ),
      home: const Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 5, right: 5, top: 25),
          child: HomeScreen(),
        ),
      ), // Ensured content is not under the status bar
    );
  }
}
