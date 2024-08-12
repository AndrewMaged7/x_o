import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final String label;
  final int index;
  final Function? click;
  const CustomBtn(
      {super.key,
      required this.label,
      required this.index,
       this.click});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.cyan,
      onPressed: () {
        click!(index);
      },
      child: Text(label,style:const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
    );
  }
}
