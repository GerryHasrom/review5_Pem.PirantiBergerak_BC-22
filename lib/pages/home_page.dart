import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/profile_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Column(
            children: [
              const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.png'),
                ),
                accountName: Text("Praktikum Mobile"),
                accountEmail: Text('mobile@gmail.com'),
                decoration: BoxDecoration(color: Colors.lightBlueAccent),
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.search),
                title: const Text('Cari'),
                onTap: () {},
              ),
            ],
          ),
        ),
        backgroundColor: Colors.red,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const MyProfile();
                    }));
                  },
                  child: const Text(
                    "Pindah Screen",
                  )),
            ),
            Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/ProfilePage");
              },
              child: const Text(
                "Pindah ke Profile Page",
              ),
            ),
          ),
          ],
        ));
  }
}