// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:taski/utils/constant.dart';
import 'package:taski/utils/dialogwidget.dart';
import 'package:taski/utils/taskietile.dart';

class Homepage extends StatefulWidget {
  const Homepage({
    super.key,
  });

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _controller = TextEditingController();
  List todoList = [
    ['watch tutorial', false],
    ['watch me', false],
    ['watch all', false],
  ];
  //TextEditingController  ? controller = _controller;

  void createTask() {
    showDialog(
        context: context,
        builder: (context) {
          return Dialogwidget(
            controller: _controller,
            onsaved: savetask,
          );
        });
  }

  void savetask() {
    setState(() {
      todoList.add([_controller.text, false]);
      _controller.clear();
      Navigator.pop(context);
    });
  }
//    void cancel(){
// setState(() {
//   todoList.remove(value);
// });

//    }

  void checkboxChanged(bool value, int index) {
    setState(() {
      todoList[index][1] = !todoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: createTask,
        backgroundColor: DesignColors.backgroundRightSide,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
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
                  checkboxChanged(value!, index);
                });
          },
        ),
      ),
    );
  }
}
