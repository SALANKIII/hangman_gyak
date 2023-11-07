import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hangman/views/game_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 0, 85),
          title: Center(child: Text("Hangman"))),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
              height: 300, child: Image.asset("images/husveti-sonka-2.jpg")),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "add meg a keresztneved",
                labelText: "Keresztnév",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "add meg a vezetékneved",
                labelText: "Vezetéknév",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "add meg az iskolád",
                labelText: "Iskolád",
              ),
            ),
          ),
          CupertinoButton(
            color: Color.fromARGB(255, 255, 0, 85),
            child: Text("Start game"),
            onPressed: () {
              Get.to(
                () => GameView(),
                transition: Transition.downToUp,
              );
            },
          )
        ],
      ),
    );
  }
}
