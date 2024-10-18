import 'package:flutter/material.dart';

import 'constant.dart';

// ignore: must_be_immutable, camel_case_types
class Taskie_tile extends StatelessWidget {
  final String taskname;
  final bool isdone;
  Function(bool?)? onChanged;

  Taskie_tile(
      {super.key,
      required this.taskname,
      required this.isdone,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 5, 5, 10),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: DesignColors.backgroundRightSide,
        ),
        child: Center(
          child: ListTile(
            leading: Checkbox(value: isdone, onChanged: onChanged),
            title: Text(
              taskname,
              style:  TextStyle(color: Colors.white,decoration:isdone ? TextDecoration.lineThrough  : TextDecoration.none,),
            ),
          ),
        ),
      ),
      );
    
  }
}
