import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoappusinghive/customwidget&variables/widgets.dart';
import 'package:todoappusinghive/data/data.dart';
import 'package:readmore/readmore.dart';
import 'package:todoappusinghive/pages/addtaskpage.dart';
import 'package:todoappusinghive/pages/detailedview.dart';
import 'package:todoappusinghive/pages/editpage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
            children: [
              Appbartodo(
                'LIST YOUR TOMORROW ',
                Colors.white,
                Colors.black,
                'A',
              ),
              SizedBox(height: 44),

              Container(
                height: 435,
                width: 312.00638834635413,
                child: ListView.builder(
                  itemCount: homeviewtitle.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Detailedview(),
                          ),
                        );
                      },

                      child: Container(
                        margin: EdgeInsets.only(bottom: 42.666666666666664),
                        height: 27,
                        width: 312.00638834635413,
                        decoration: BoxDecoration(
                          border: BoxBorder.fromLTRB(
                            top: BorderSide.none,
                            right: BorderSide.none,
                            bottom: BorderSide(
                              width: 0.667,
                              color: Colors.white,
                            ),
                            left: BorderSide.none,
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                            9.333333333333332,
                            0,
                            0,
                            0,
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 26,
                                width: 187.33333333333331,

                                child: Text(
                                  (homeviewtitle[index]).toString(),
                                  style: GoogleFonts.montserratAlternates(
                                    textStyle: TextStyle(
                                      fontSize: 18.666666666666664,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 25,

                                padding: EdgeInsets.only(right: 9),

                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Editpage(),
                                            ),
                                          );
                                        },
                                        child: Icon(
                                          Icons.edit,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    SizedBox(
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            homeviewtitle.removeAt(index);
                                          });
                                        },

                                        child: Icon(
                                          Icons.delete,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 14.666666666666666),
              Column(
                children: [
                  Icon(
                    Icons.keyboard_double_arrow_down_rounded,
                    color: Colors.white,
                    size: 16.666666666666664,
                  ),

                  textpfd(
                    'SCROLL MORE',
                    FontWeight.w500,
                    TextAlign.center,
                    10,
                    Colors.white,
                  ),
                  SizedBox(height: 22.666666666666664),
                  custombutton(Colors.white, Colors.black, () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Addtaskpage()),
                    );
                  }, Icon(Icons.add)),

                  SizedBox(height: 24),
                  custombottomnavigator(Colors.white, context),
                ],
              ),
              // Container(child: ,),
              // Container(child: ,),
            ],
          ),
        ),
      ),
    );
  }
}
