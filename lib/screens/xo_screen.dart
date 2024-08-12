import 'package:flutter/material.dart';
import 'package:x_o/widgets/class_data.dart';
import 'package:x_o/widgets/custom_btn.dart';

class XoScreen extends StatefulWidget {
  static const String routeName = "gameScreen";
  const XoScreen({super.key});

  @override
  State<XoScreen> createState() => _XoScreenState();
}

class _XoScreenState extends State<XoScreen> {
  int? index;
  
  List<String> value = ["", "", "", "", "", "", "", "", ""];
  int scorePlayer1 = 0;
  int scorePlayer2 = 0;

  @override
  Widget build(BuildContext context) {
    Data? data = ModalRoute.of(context)?.settings.arguments as Data;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: const Text(
            "X O GAME Andrew",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      data.players1,
                      style:
                          const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    Text("score : ${scorePlayer1.toString()}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(data.players2,
                        style:const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22)),
                    Text("score : ${scorePlayer2.toString()}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22)),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  width: 10,
                ),
                CustomBtn(label: value[0], index: 0, click: onClick),
                const SizedBox(
                  width: 10,
                ),
                CustomBtn(label: value[1], index: 1, click: onClick),
                const SizedBox(
                  width: 10,
                ),
                CustomBtn(label: value[2], index: 2, click: onClick),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  width: 10,
                ),
                CustomBtn(label: value[3], index: 3, click: onClick),
                const SizedBox(
                  width: 10,
                ),
                CustomBtn(label: value[4], index: 4, click: onClick),
                const SizedBox(
                  width: 10,
                ),
                CustomBtn(label: value[5], index: 5, click: onClick),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  width: 10,
                ),
                CustomBtn(label: value[6], index: 6, click: onClick),
                const SizedBox(
                  width: 10,
                ),
                CustomBtn(label: value[7], index: 7, click: onClick),
                const SizedBox(
                  width: 10,
                ),
                CustomBtn(label: value[8], index: 8, click: onClick),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  void reset() {
    value = ["", "", "", "", "", "", "", "", ""];
    counter = 0;
  }

  int counter = 0;
  void onClick(index) {
    if (counter.isEven) {
      value[index] = 'x';
      bool win = checkWinner('x');
      if (win) {
        scorePlayer1 += 1;
        reset();
      } else {
        counter++;
      }
    } else {
      value[index] = 'o';
      bool win = checkWinner('o');
      if (win) {
        scorePlayer2 += 1;
        reset();
      } else {
        counter++;
      }
    }
    if (counter == 9) {
      reset();
    }
    setState(() {});
  }

  bool checkWinner(String symbol) {
    if (value[0] == symbol && value[1] == symbol && value[2] == symbol) {
      return true;
    } else if (value[3] == symbol && value[4] == symbol && value[5] == symbol) {
      return true;
    } else if (value[6] == symbol && value[7] == symbol && value[8] == symbol) {
      return true;
    } else if (value[0] == symbol && value[3] == symbol && value[6] == symbol) {
      return true;
    } else if (value[1] == symbol && value[4] == symbol && value[7] == symbol) {
      return true;
    } else if (value[2] == symbol && value[5] == symbol && value[8] == symbol) {
      return true;
    } else if (value[0] == symbol && value[4] == symbol && value[8] == symbol) {
      return true;
    } else if (value[2] == symbol && value[4] == symbol && value[6] == symbol) {
      return true;
    }
    return false;
  }
}
