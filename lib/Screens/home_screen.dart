import 'package:flutter/material.dart';
import 'custom_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
              boxShadow: boxshadow,
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
                  CustomButtom(title: "Document", icon: Icon(Icons.ac_unit)),
                  CustomButtom(title: "Electronics", icon: Icon(Icons.ac_unit)),
                ],
              ),
              Row(
                spacing: 20,
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
          Container(
            height: 300,
            width: null,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("images/map.png")),
            ),
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
                    weekday: "FRI",
                  ),
                  Deliveries(
                    title: "Rider kwav Lubem",
                    time: TimeOfDay.now(),
                    day: DayPeriod.am,
                    weekday: "FRI",
                  ),
                  Deliveries(
                    title: "Rider kwav Lubem",
                    time: TimeOfDay.now(),
                    day: DayPeriod.am,
                    weekday: "FRI",
                  ),
                ],
              ),
            ],
          ),
          TextButton(
            onPressed: () => {print("test-123")},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "View my location",
                  style: TextStyle(
                    color: orangeBlase,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Icon(
                  Icons.keyboard_double_arrow_down,
                  weight: 10,

                  color: orangeBlase,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
