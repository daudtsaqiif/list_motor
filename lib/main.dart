import 'package:flutter/material.dart';
import 'package:list_motor/detail_screen.dart';
import 'package:list_motor/login_screen.dart';
import 'package:list_motor/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/login' :(context)=> LoginScreen(),
        '/main' :(context)=> MainScreen(),
      },
    );
  }
}
