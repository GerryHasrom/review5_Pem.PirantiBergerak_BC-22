import 'package:flutter/material.dart';
import 'pages/bottom_navigation_page.dart';
import 'pages/home_page.dart';
import 'pages/profile_page.dart';
import 'pages/settings_page.dart';
import 'pages/tab_bar_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const BottomNavigationPage(),
      routes: {
        "/HomePage" : (context) => const MyHomePage(),
        "/ProfilePage" : (context) => const MyProfile(),
        "/SettingsPage" : (context) => const MySettingsPage(),
      },
    );
  }
}

