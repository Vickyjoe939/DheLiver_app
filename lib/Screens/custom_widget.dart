import 'package:flutter/material.dart';

const viewLocation = Row(
  children: [
    Text(
      "View my location",
      style: TextStyle(fontSize: 15, color: Color(0xFF6B0000)),
    ),
    Icon(Icons.arrow_drop_up_outlined),
  ],
);

const userBio = Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage("images/heLvier1.png"),
            ),
            Text(
              "HELIVER",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                fontFamily: "poppins",
              ),
            ),
          ],
        ),
        Text(
          "Send your package anywhere & fast",
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ],
    ),
    Column(
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            Align(
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("images/avater.png"),
              ),
            ),
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 51, 255, 0),
              radius: 8,
            ),
          ],
        ),
        Text(
          "online |",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ],
    ),
  ],
);

const orangeBlase = Color(0xffff6b00);
const deepGray = Color(0xff1e1e1e);
const softWhite = Color(0xfff9f9f9);
const mutedGray = Color(0xffa3a3a3);
const deepTeal = Color(0xff005e5c);
const deepGray10 = Color(0xff4e4e4e);

const status = Color(0xff33ff00);

const black25 = Color(0x00000040);
const black50 = Color(0x00000080);
const black80 = Color(0x000000CC);

// styles

List<BoxShadow> boxshadow = [
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
];

const orangeStyle = TextStyle(
  color: orangeBlase,
  fontSize: 12,
  decoration: TextDecoration.underline,
  decorationColor: orangeBlase,
  decorationThickness: 2,
  decorationStyle: TextDecorationStyle.solid,
);

const map = null;

class HeaderTitle extends StatelessWidget {
  final String mytitle;

  const HeaderTitle({super.key, required this.mytitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.arrow_circle_left),
        SizedBox(width: 60),
        Text(
          mytitle,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}

class Deliveries extends StatelessWidget {
  final String title;
  final TimeOfDay time;
  final DayPeriod day;
  final String weekday;

  const Deliveries({
    super.key,
    required this.title,
    required this.weekday,
    required this.time,
    required this.day,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title),
            Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(weekday),
                Text(" ${time.hour}: ${time.minute} ${day.name.toUpperCase()}"),
              ],
            ),
          ],
        ),
        SizedBox(height: 10),
      ],
    );
  }
}

class Avarter extends StatelessWidget {
  final String img;
  const Avarter({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(img),
          backgroundColor: deepGray,
          radius: 24,
        ),
        Positioned(
          right: 1,
          bottom: 1,
          child: CircleAvatar(backgroundColor: status, radius: 5),
        ),
      ],
    );
  }
}

class CustomButtom extends StatelessWidget {
  final String title;
  final Widget icon;
  const CustomButtom({super.key, this.title = "", required this.icon});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: TextButton(
        style: TextButton.styleFrom(
          side: BorderSide(color: Colors.black26),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
        ),
        onPressed: () => {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          child: Row(
            children: [
              icon,
              SizedBox(width: 4),
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
