import 'package:dheliver_app/Screens/custom_widget.dart';
import 'package:dheliver_app/Screens/delivery/send_package.dart';
import 'package:flutter/material.dart';

class Delivery extends StatelessWidget {
  const Delivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderTitle(mytitle: "CREATE DELIVERY"),
        Column(
          children: [
            const SizedBox(height: 32),
            TextButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SendPackage();
                    },
                  ),
                ),
              },
              style: TextButton.styleFrom(
                // side: BorderSide()

              ),
              child: const Row(
                children: [
                  Icon(
                    Icons.production_quantity_limits_outlined,
                    size: 23,
                    color: Color(0xFF2B75CA),
                  ),
                  SizedBox(width: 13),
                  Text(
                    "Send Package",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Row(
              children: [
                Icon(Icons.my_location, size: 23, color: Color(0xFF922CB4)),
                SizedBox(width: 13),
                Text(
                  "Track your package",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Row(
              children: [
                Icon(Icons.schedule, size: 23, color: orangeBlase),
                SizedBox(width: 13),
                Text(
                  "Schedule package",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
