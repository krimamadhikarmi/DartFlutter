import 'dart:js';
import 'package:dart2/about_us.dart';
import 'package:dart2/common/route_constants.dart';
import 'package:dart2/contact.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'side_drawer.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
    ),
    initialRoute: RouteConstants.initialRoute,
    routes: {
      RouteConstants.initialRoute: (context) => MyApp(),
      RouteConstants.contactRoute: (context) => Contact(),
    },

  ),
  );
}
class MyApp extends StatefulWidget {
  MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  final List<Widget> screens = [
    Home(),
    Contact(),
    AboutUs(),
  ];
  int currentIndex =0;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hello Title",
          style: TextStyle(
              fontStyle: FontStyle.italic, fontSize: 30, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.logout),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.verified_user),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Icon(Icons.account_box),
          )
        ],
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (int selectedIndex)=>{
          setState(() {
            currentIndex = selectedIndex;
          }),
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Contact',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.abc_outlined),
            label: 'About',
          ),
        ],
      ),
      drawer:  SideDrawer(),
      body: screens.elementAt(currentIndex),
    );
  }
}
