// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:taski/utils/constant.dart';
import 'package:taski/utils/taskietile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List todoList = [
    ['watch tutorial', false],
    ['watch me', false],
    ['watch all', false],
  ];
  void checkboxChanged(bool? value, int  index) {
    setState(() {

      todoList[index][0] = !todoList[index][0];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: DesignColors.backgroundRightSide,
        title: const Center(
            child: Text(
          'Taskie',
          style: TextStyle(color: Colors.white),
        )),
      ),
      backgroundColor: const Color.fromARGB(255, 145, 155, 209),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (BuildContext context, int index) {
            return Taskie_tile(
                taskname: todoList[index][0],
                isdone: todoList[index][1],
                onChanged: (value) { 
                  checkboxChanged(
                    value,index
                  );
                });
          },
          // children: [
          //   Taskie_tile(
          //     taskname: 'assigment',
          //     isdone: true,
          //     onChanged: (_) {},
          //   ),
          //   Taskie_tile(
          //     taskname: 'code',
          //     isdone: false,
          //     onChanged: (_) {},
          //   )
          // ],
        ),
      ),
    );
  }
}
