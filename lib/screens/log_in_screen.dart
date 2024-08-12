import 'package:flutter/material.dart';
import 'package:x_o/screens/xo_screen.dart';
import 'package:x_o/widgets/class_data.dart';
//import 'package:x_o/widgets/custom_btn.dart';
//import 'package:x_o/widgets/custom_text_field.dart';

class LogInScreen extends StatefulWidget {
  static const String routeName = "logIn";

  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
   TextEditingController namePlayer1 = TextEditingController();

  TextEditingController namePlayer2 = TextEditingController();

  //String namePlayer1 = '';
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        controller: namePlayer1,
        /*onChanged: (value) {
          namePlayer1 = value;
        },*/
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: const BorderSide(color: Colors.cyan)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: const BorderSide(color: Colors.cyan)),
            label:const Text("player 1")),
      ),
    ),
          const SizedBox(height: 20),
          Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        controller: namePlayer2,
        /*onChanged: (value) {
          namePlayer2 = value;
        },*/
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: const BorderSide(color: Colors.cyan)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: const BorderSide(color: Colors.cyan)),
            label:const Text("player 2")),
      ),
    ),
          const SizedBox(height: 20),
          MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Colors.cyan,
            padding: const EdgeInsets.all(10),
            onPressed: () {
              Navigator.pushNamed(context, XoScreen.routeName,
                  arguments: Data(players1: namePlayer1.text, players2: namePlayer2.text));
            },
            child: const Text(
              "START GAME",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
