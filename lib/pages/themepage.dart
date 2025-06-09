import 'package:flutter/material.dart';
import 'package:todoappusinghive/customwidget&variables/widgets.dart';
import 'package:todoappusinghive/data/data.dart';

class Themepage extends StatefulWidget {
  const Themepage({super.key});

  @override
  State<Themepage> createState() => _ThemepageState();
}

class _ThemepageState extends State<Themepage> {
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
              Appbartodo('CHOOSE THEME', Colors.white, Colors.black, 'A'),

              SizedBox(
                height: 430.66666666666663,
                width: 311.3333333333333,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 15,
                  ),
                  itemCount: colortheme.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.333,
                          color: Colors.white,
                          strokeAlign: BorderSide.strokeAlignInside,
                        ),
                        borderRadius: BorderRadius.circular(70),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 69,
                            height: 138,
                            decoration: BoxDecoration(
                              color: colortheme[index]['1color'],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(70),
                                bottomLeft: Radius.circular(70),
                              ),
                            ),
                          ),
                          Container(
                            width: 69,
                            height: 138,

                            decoration: BoxDecoration(
                              color: colortheme[index]['2color'],
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(70),
                                bottomRight: Radius.circular(70),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
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
