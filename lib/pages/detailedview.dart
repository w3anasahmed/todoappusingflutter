import 'package:flutter/material.dart';
import 'package:todoappusinghive/customwidget&variables/widgets.dart';
import 'package:todoappusinghive/data/data.dart';

class Detailedview extends StatelessWidget {
  const Detailedview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 360,
          height: 805,
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Appbartodo('DETAILED TASK VIEW', Colors.white, Colors.black, 'A'),

              SizedBox(height: 52.666666666666664),

              SizedBox(
                height: 488,
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 94,
                      width: 300,

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 26,
                            child: textma(
                              'Title: ',
                              FontWeight.w300,
                              TextAlign.left,
                              18.666666666666664,
                              Colors.white,
                            ),
                          ),
                          Container(
                            height: 68,

                            child: textma(
                              'your title is here',
                              FontWeight.w400,
                              TextAlign.left,
                              18.666666666666664,
                              Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 76.66666666666666,
                      width: 300,

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 26,
                            child: textma(
                              'Due Date: ',
                              FontWeight.w300,
                              TextAlign.left,
                              18.666666666666664,
                              Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 50.666666666666664,

                            child: textma(
                              'no due date add here',
                              FontWeight.w400,
                              TextAlign.left,
                              18.666666666666664,
                              Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      height: 317.3333333333333,
                      width: 300,

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 26,
                            child: textma(
                              'Description: ',
                              FontWeight.w300,
                              TextAlign.left,
                              18.666666666666664,
                              Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 291.3333333333333,

                            child: textma(
                              'No description here',
                              FontWeight.w400,
                              TextAlign.left,
                              18.666666666666664,
                              Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              custombottomnavigator(Colors.white, context),
            ],
          ),
        ),
      ),
    );
  }
}
