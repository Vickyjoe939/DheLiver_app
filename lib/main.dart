import 'package:dheliver_app/Screens/custom_widget.dart';
import 'package:dheliver_app/Screens/delivery.dart';
import 'package:dheliver_app/Screens/wallet.dart';
import 'package:flutter/material.dart';
import 'Screens/home_screen.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: const Color.fromARGB(255, 254, 254, 254),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  int _selectedIndex = 0;
  final  _screens = [HomeScreen(), Wallet(), Delivery()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: Expanded(
        child: Padding(
          padding:const EdgeInsets.fromLTRB(20, 14, 20, 1),
          child: _screens[_selectedIndex],
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "Wallet"),
          BottomNavigationBarItem(icon: Icon(Icons.create), label: "Create"),
          BottomNavigationBarItem(icon: Icon(Icons.accessible), label: "Mes"),
          BottomNavigationBarItem(icon: Icon(Icons.biotech), label: "Profile"),
        ],
        iconSize: 36,
        showUnselectedLabels: true,
        unselectedLabelStyle: TextStyle(color: Colors.black),
        selectedItemColor: orangeBlase,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: (index) => {
          
          setState(() => _selectedIndex = index)},
      ),
    );
  }
}
