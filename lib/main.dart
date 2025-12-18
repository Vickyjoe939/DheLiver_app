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
                      color: const Color.fromARGB(66, 167, 166, 166),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Category", style: TextStyle(fontSize: 18)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    spacing: 10.0, // horizontal gap between chips
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(
                            orangeBlase,
                          ),
                        ),
                        onPressed: () => {},
                        child: Text(
                          "All",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,

                            // backgroundColor: Color.fromARGB(252, 255, 106, 0),
                          ),
                        ),
                      ),
                      // SizedBox(width: 11),
                      CustomButtom(
                        title: "Document",
                        icon: Icon(Icons.ac_unit),
                      ),
                      CustomButtom(
                        title: "Electronics",
                        icon: Icon(Icons.ac_unit),
                      ),
                    ],
                  ),
                  Row(
                    spacing: 10,
                    children: [
                      CustomButtom(title: "Fragile", icon: Icon(Icons.ac_unit)),
                      CustomButtom(title: "More", icon: Icon(Icons.ac_unit)),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 41),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Riders near you!",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("View all", style: orangeStyle),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Avarter(img: "images/avater.png"),
                      Avarter(img: "images/avater.png"),
                      Avarter(img: "images/avater.png"),
                      Avarter(img: "images/avater.png"),
                      Avarter(img: "images/avater.png"),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 39),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recent deliveries",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text("View all", style: orangeStyle),
                    ],
                  ),
                  Column(
                    children: [
                      Deliveries(
                        title: "Rider kwav Lubem",
                        time: TimeOfDay.now(),
                        day: DayPeriod.am,
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
        selectedItemColor: orangeBlase,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: (index) => {setState(() => _selectedIndex = index)},
      ),
    );
  }
}
