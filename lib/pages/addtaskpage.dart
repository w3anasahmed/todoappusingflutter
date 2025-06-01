import 'package:flutter/material.dart';
import 'package:todoappusinghive/customwidget&variables/widgets.dart';

class Addtaskpage extends StatefulWidget {
  const Addtaskpage({super.key});

  @override
  State<Addtaskpage> createState() => _AddtaskpageState();
}

class _AddtaskpageState extends State<Addtaskpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
    );
  }
}
