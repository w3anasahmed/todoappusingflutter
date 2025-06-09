import 'package:flutter/material.dart';
import 'package:todoappusinghive/customwidget&variables/widgets.dart';
import 'package:todoappusinghive/pages/homepage.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 360,
          height: 805.333,
          color: Colors.black,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 69.333,
                  width: 292,
                  child: textpfd(
                    "WELCOME TO TODO APP",
                    FontWeight.w900,
                    TextAlign.center,
                    26,
                    Colors.white,
                  ),
                ),
                SizedBox(height: 97.333),
                Container(
                  child: customtextfield("Enter your Name", Colors.white),
                ),
                SizedBox(height: 106.667),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(46)),
                  ),
                  height: 55.333,
                  width: 203.333,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Homepage()),
                      );
                    },
                    child: textpfd(
                      'NEXT',
                      FontWeight.w700,
                      TextAlign.center,
                      18.667,
                      Colors.black,
                    ),
                  ),
                ),

                SizedBox(height: 30.667),
                Container(
                  child: textma(
                    'Enter your name to help us make your experience better.',
                    FontWeight.w300,
                    TextAlign.center,
                    18.6678,
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
