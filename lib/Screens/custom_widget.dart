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
              radius: 10,
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
