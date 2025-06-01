import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoappusinghive/customwidget&variables/widgets.dart';
import 'package:todoappusinghive/pages/homepage.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 540,
          height: 1208,
          color: Colors.black,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 104,
                  width: 438,
                  child: textpfd(
                    "WELCOME TO TODO APP",
                    FontWeight.w900,
                    TextAlign.center,
                    39,
                    Colors.white,
                  ),
                ),
                SizedBox(height: 146),
                Container(
                  child: customtextfield("Enter your Name", Colors.white),
                ),
                SizedBox(height: 160),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(46)),
                  ),
                  height: 83,
                  width: 305,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Homepage()),
                      );
                    },
                    child: textpfd(
                      'NEXT',
                      FontWeight.w700,
                      TextAlign.center,
                      28,
                      Colors.black,
                    ),
                  ),
                ),

                SizedBox(height: 46),
                Container(
                  child: textma(
                    'Enter your name to help us make your experience better.',
                    FontWeight.w300,
                    TextAlign.center,
                    28,
                    Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
