import 'package:flutter/material.dart';
import 'package:todoappusinghive/customwidget&variables/widgets.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 540,
          height: 1208,
          color: Colors.black,
          child: Container(
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        height: 104,
                        width: 200,
                        child: textpfd(
                          'LIST NEW TASK',
                          FontWeight.w900,
                          TextAlign.start,
                          39,
                          Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      //bottom navigator bar
      bottomNavigationBar: SizedBox(
        width: 540,

        child: BottomNavigationBar(
          backgroundColor: Colors.red,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          currentIndex: 0,
          onTap: (value) => {},
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            // BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
