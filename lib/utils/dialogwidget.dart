import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:taski/utils/bottonwidget.dart';

class Dialogwidget extends StatelessWidget {
  final controller;
  final VoidCallback onsaved;

  Dialogwidget(
      {super.key,
      required this.controller,
      // required this.oncancel,
      required this.onsaved});

  VoidCallback? oncancel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        content: Container(
      height: 120,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            controller: controller,
            decoration: const InputDecoration(
                hintText: 'Enter task',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Button(
                title: 'save',
                onpressed: onsaved
                ,
              ),
              Button(
                title: 'cancel',
                onpressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          )
        ],
      ),
    ));
  }
}
