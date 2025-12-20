import 'package:dheliver_app/Screens/custom_widget.dart';
import 'package:flutter/material.dart';

// class Text600SemiBold extends StatelessWidget {
//   final double fontSize;
//   final Color color;
//   final String title;
//   const Text600SemiBold({
//     super.key,
//     required this.title,
//     this.fontSize = 26,
//     this.color = Colors.black,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       title,
//       style: TextStyle(
//         fontSize: fontSize,
//         color: color,
//         fontStyle: FontStyle.normal,
//         fontWeight: FontWeight.w600,
//         fontFamily: "Poppins",
//       ),
//     );
//   }
// }

// class Text400Regular extends Text600SemiBold {
//   @override
//   Color get color => Color(0x00000080);

//   const Text400Regular({super.key, required super.title});
// }

class FontStyle600 extends TextStyle {
  const FontStyle600({super.fontSize})
    : super(fontWeight: FontWeight.w600, fontFamily: "Poppins");
}

class FontStyle500 extends TextStyle {
  const FontStyle500({super.fontSize, super.color})
    : super(fontWeight: FontWeight.w500, fontFamily: "Poppins");
}

class FontStyle400 extends TextStyle {
  const FontStyle400({super.fontSize, super.color = black50})
    : super(fontWeight: FontWeight.w500, fontFamily: "Poppins");
}
