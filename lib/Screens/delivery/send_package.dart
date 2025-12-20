import 'package:dheliver_app/Screens/Components/buttons.dart';
import 'package:dheliver_app/Screens/Components/textstyles.dart';
import 'package:flutter/material.dart';
import '../custom_widget.dart';

class SendPackage extends StatelessWidget {
  const SendPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 14, 20, 1),
          child: Column(
            children: [
              HeaderTitle(mytitle: "Send package"),
              SizedBox(height: 32),
              TextButton(
                onPressed: () => {},
                style: TextButton.styleFrom(
                  shadowColor: deepGray,
                  side: BorderSide(color: deepGray),
                ),

                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 6,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Benin Club G.R.A",
                        style: TextStyle(
                          fontSize: 13,
                          color: deepGray10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_right),
                      Text(
                        "Oliha Market",
                        style: TextStyle(
                          color: orangeBlase,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Upload package",
                  style: FontStyle500(fontSize: 14),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () => {print("hello-test")},
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 36,
                    vertical: 40,
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Icon(
                          Icons.cloud_upload_outlined,
                          size: 37,
                          color: orangeBlase,
                        ),
                        Text("Click here to upload images", style: orangeStyle),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Text("Package Description", style: FontStyle500(fontSize: 16)),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "Flaws, Defects, Missing parts ",
                    style: FontStyle500(fontSize: 14),
                  ),
                ],
              ),
              Row(children: [Expanded(child: CtaButton())]),
            ],
          ),
        ),
      ),
    );
  }
}
