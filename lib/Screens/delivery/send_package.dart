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
        child: SingleChildScrollView(
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
                          Text(
                            "Click here to upload images",
                            style: orangeStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Text("Package Description", style: FontStyle500(fontSize: 16)),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Flaws, Defects, Missing parts ",
                      style: FontStyle500(fontSize: 14),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      spacing: 12,
                      children: [
                        FilterChip(
                          label: Text("YES"),
                          backgroundColor: orangeBlase,
                          onSelected: (bool value) => {},
                        ),
                        FilterChip(
                          label: Text("NO", style: FontStyle500(fontSize: 14)),
                          backgroundColor: Colors.white,
                          onSelected: (bool value) => {},
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 25),
                TextField(
                  maxLines: 4,
                  style: FontStyle500(fontSize: 14),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: orangeBlase),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        // style: BorderStyle.solid,
                        color: black25,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'If yes, mention in the description',
                  ),
                ),
                SizedBox(height: 24),
                Column(
                  children: [
                    UserInput(label: "Name of delivery"),
                    SizedBox(height: 24),
                    UserInput(label: "Location pick"),
                    SizedBox(height: 24),
                    UserInput(label: "Location drop"),
                    SizedBox(height: 24),
                    UserInput(label: "Color"),
                    SizedBox(height: 24),
                  ],
                ),
                Row(children: [Expanded(child: CtaButton())]),
                SizedBox(height: 18),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UserInput extends StatelessWidget {
  final String? label;

  const UserInput({super.key, this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label ?? "unknown", style: FontStyle500(fontSize: 16)),
        SizedBox(
          width: 203,
          child: TextField(
            scrollPadding: EdgeInsets.all(0),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 7),
              isDense: true,
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  // width: 4,
                  // color: orangeBlase,
                ),
                gapPadding: 0,
                borderRadius: BorderRadius.circular(7),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: orangeBlase),
                gapPadding: 0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
