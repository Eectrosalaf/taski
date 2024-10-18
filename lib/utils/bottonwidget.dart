
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    
    required this.title,
     this.onpressed,
  });
  //final IconData? icon;
  final String? title;
  final Function() ? onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: GestureDetector(
        onTap:onpressed,
        
        
        child: Container(
          width: 90,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blue,
          ),
          child: Center(
              child: Text(
            title!,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
