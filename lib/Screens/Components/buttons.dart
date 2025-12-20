import 'package:dheliver_app/Screens/custom_widget.dart';
import 'package:flutter/material.dart';

class CtaButton extends StatefulWidget {
  const CtaButton({super.key});

  @override
  State<CtaButton> createState() => _CtaButtonState();
}

class _CtaButtonState extends State<CtaButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: orangeBlase,
        shadowColor: Colors.black,
      ),

      onPressed: () => {Navigator.pop(context)},
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          // horizontal: double.
        ),
        child: Text(
          'SUBMIT',

          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
