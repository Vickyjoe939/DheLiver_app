import 'package:dheliver_app/Screens/custom_widget.dart';
import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 14, 20, 1),
          child: Column(
            children: [
              userBio,
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),

                decoration: BoxDecoration(
                  // color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  // boxShadow: List.filled(length, fill)
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(66, 152, 151, 151),
                      offset: const Offset(5.0, 5.0),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ), //BoxShadow
                    BoxShadow(
                      color: Colors.white,
                      offset: const Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ), //BoxShadow
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.search),
                          border: InputBorder.none,
                          hintText: 'Search',
                          labelStyle: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      color: Color.fromARGB(196, 185, 185, 184),
                      height: 26,
                      width: 2,
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.tune, size: 30),
                  ],
                ),
              ),
              SizedBox(height: 41),
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Category", style: TextStyle(fontSize: 18)),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () => {},
                        child: Text(
                          "All",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,

                            backgroundColor: Color.fromARGB(252, 255, 106, 0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
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
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: (index) => {setState(() => _selectedIndex = index)},
      ),
    );
  }
}
