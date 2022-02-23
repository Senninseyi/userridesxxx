import 'package:flutter/material.dart';
import 'package:userrides/screen/loginScreen.dart';
import 'package:userrides/screen/mainScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XXX Rider App',
      theme: ThemeData(
        fontFamily: "Brand-Bold",
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: const MainScreen(),
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
