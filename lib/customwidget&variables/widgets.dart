import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
  return Container(
    height: 40.5,
    width: 468.01,
    child: TextField(
      style: GoogleFonts.montserratAlternates(
        // You can change this font
        color: color,
        fontSize: 28,
        fontWeight: FontWeight.w300,
      ),
      decoration: InputDecoration(
        hintText: text,
        hintStyle: GoogleFonts.montserratAlternates(
          color: color,
          fontSize: 28,
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
      cursorHeight: 12,
      onChanged: (value) {},
    ),
  );
}
