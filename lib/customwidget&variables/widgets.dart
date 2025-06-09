import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoappusinghive/pages/homepage.dart';
import 'package:todoappusinghive/pages/themepage.dart';

//text widget for monstserratalternates font
Widget textma(
  String text,
  FontWeight weight,
  TextAlign align,
  double size,
  textcolor,
) {
  return Text(
    text,
    textAlign: align,
    style: GoogleFonts.montserratAlternates(
      textStyle: TextStyle(
        fontWeight: weight,
        fontSize: size,
        color: textcolor,
      ),
    ),
  );
}

//text widget for playfairdisplay font
Widget textpfd(
  String text,
  FontWeight weight,
  TextAlign align,
  double size,
  Color textcolor,
) {
  return Text(
    text,
    textAlign: align,
    style: GoogleFonts.playfairDisplay(
      textStyle: TextStyle(
        fontWeight: weight,
        fontSize: size,
        color: textcolor,
      ),
    ),
  );
}

//textfeild widget

Widget customtextfield(String text, Color color) {
  return SizedBox(
    height: 27,
    width: 312.007,
    child: TextField(
      style: GoogleFonts.montserratAlternates(
        // You can change this font
        color: color,
        fontSize: 18.667,
        fontWeight: FontWeight.w300,
      ),
      decoration: InputDecoration(
        hintText: text,
        hintStyle: GoogleFonts.montserratAlternates(
          color: color,
          fontSize: 18.667,
          fontWeight: FontWeight.w300,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: color), // White underline
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: color),
        ),
      ),
      cursorColor: color,
      cursorHeight: 14,
      onChanged: (value) {},
    ),
  );
}

Widget Appbartodo(
  String text,
  Color color,
  Color secondcolor,
  String secondtext,
) {
  return Container(
    padding: EdgeInsets.fromLTRB(24, 34, 24, 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 69.33333333333333,
          width: 178.66666666666666,
          child: textpfd(text, FontWeight.w900, TextAlign.left, 26, color),
        ),

        Container(
          height: 56,
          width: 56,
          padding: EdgeInsets.all(0),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(28),
          ),
          child: Center(
            child: textpfd(
              secondtext,
              FontWeight.w900,
              TextAlign.center,
              26,
              secondcolor,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget custombottomnavigator(Color iconcolor, context) {
  return Container(
    decoration: BoxDecoration(
      border: BoxBorder.fromLTRB(
        top: BorderSide(width: 0.667, color: iconcolor),
        right: BorderSide.none,
        bottom: BorderSide.none,
        left: BorderSide.none,
      ),
    ),
    height: 67.33333333333333,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Homepage()),
            );
          },
          child: SizedBox(
            width: 30,
            child: Icon(Icons.home, color: iconcolor, size: 22),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Themepage()),
            );
          },
          child: SizedBox(
            width: 30,
            child: Icon(
              Icons.imagesearch_roller_rounded,
              color: iconcolor,
              size: 22,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget custombutton(
  Color buttoncolor,
  Color iconcolor,
  VoidCallback? onpress,
  Icon icon,
) {
  return SizedBox(
    height: 55.33333333333333,
    width: 203.33333333333331,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: buttoncolor,
        iconColor: iconcolor,
        iconSize: 22.666666666666664,
      ),
      onPressed: onpress,
      child: icon,
    ),
  );
}





// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // Use a dark theme to match the screenshot
//       theme: ThemeData.dark().copyWith(
//         // You can set a primary color for the focused border
//         colorScheme: const ColorScheme.dark(
//           primary: Colors.white,
//         ),
//       ),
//       home: const DescriptionScreen(),
//     );
//   }
// }

// class DescriptionScreen extends StatelessWidget {
//   const DescriptionScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // Setting a dark background for the whole screen
//       backgroundColor: const Color(0xFF1A1A1A),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(24.0),
//           child: TextField(
//             // To allow for multiple lines of text like a description box
//             maxLines: 8,
//             minLines: 5,
//             keyboardType: TextInputType.multiline,

//             // Style for the text the user types
//             style: const TextStyle(
//               color: Colors.white,
//             ),
            
//             // The cursor's color
//             cursorColor: Colors.white,

//             // This is where all the styling for the box itself happens
//             decoration: InputDecoration(
//               // The text that appears on the border
//               label: const Text('Description'),

//               // Style for the label text
//               labelStyle: const TextStyle(color: Colors.grey),

//               // The border when the TextField is not focused
//               enabledBorder: OutlineInputBorder(
//                 borderSide: const BorderSide(color: Colors.grey),
//                 borderRadius: BorderRadius.circular(8.0),
//               ),

//               // The border when the TextField is focused (tapped on)
//               focusedBorder: OutlineInputBorder(
//                 // You can make the focused border a different color
//                 borderSide: const BorderSide(color: Colors.white),
//                 borderRadius: BorderRadius.circular(8.0),
//               ),
//             ),
//           ),
       
       
       
       
//         ),
//       ),
//     );
//   }
// }