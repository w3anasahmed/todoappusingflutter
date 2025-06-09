import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoappusinghive/customwidget&variables/widgets.dart';

class Editpage extends StatefulWidget {
  const Editpage({super.key});

  @override
  State<Editpage> createState() => _EditpageState();
}

class _EditpageState extends State<Editpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          width: 360,
          height: 805,
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Appbartodo('EDIT A TASK', Colors.white, Colors.black, 'A'),

              SizedBox(
                height: 430.66666666666663,
                width: 311.3333333333333,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customtextfield('Title', Colors.white),
                    customtextfield('Due date', Colors.white),

                    SizedBox(
                      height: 310.66666666666663,
                      width: 312,

                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          SizedBox(
                            height: 298,
                            width: 312,
                            child: TextField(
                              // To allow for multiple lines of text like a description box
                              maxLines: 15,
                              minLines: 12,
                              keyboardType: TextInputType.multiline,

                              // Style for the text the user types
                              style: GoogleFonts.montserratAlternates(
                                // You can change this font
                                color: Colors.white,
                                fontSize: 18.667,
                                fontWeight: FontWeight.w300,
                              ),

                              // The cursor's color
                              cursorColor: Colors.white,

                              // This is where all the styling for the box itself happens
                              decoration: InputDecoration(
                                // The border when the TextField is not focused
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    width: 0.667,
                                  ),
                                ),

                                // The border when the TextField is focused (tapped on)
                                focusedBorder: OutlineInputBorder(
                                  // You can make the focused border a different color
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Positioned(
                            left: 12,
                            top: 0,
                            child: Container(
                              height: 26,
                              width: 118,
                              color: Colors.black,
                              child: Center(
                                child: Text(
                                  'Description',
                                  style: GoogleFonts.montserratAlternates(
                                    color: Colors.white,
                                    fontSize: 18.667,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 48.666666666666664,
                width: 300,

                child: textpfd(
                  'Click on Save button to apply changes',
                  FontWeight.w400,
                  TextAlign.center,
                  18.666666666666664,
                  Colors.white,
                ),
              ),
              custombutton(Colors.white, Colors.black, () {}, Icon(Icons.save)),
              custombottomnavigator(Colors.white, context),
            ],
          ),
        ),
      ),
    );
  }
}
