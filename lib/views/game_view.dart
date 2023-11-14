import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hangman/controllers/game_view_controller.dart';
import 'package:hangman/views/widgets/letter_button.dart';
import 'package:hangman/views/widgets/letter_holder.dart';

class GameView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GameViewController controller = Get.put(GameViewController(context));
    return GetBuilder<GameViewController>(
      init: controller,
      builder: (_) {
        return (!controller.TheInitIsDone)?Center(child: CircularProgressIndicator(),):Scaffold(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 57, 61, 63),
            title: Center(child: Text("Hangman")),
          ),
          body: Container(
            width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/minimal.jpg"),
                    fit: BoxFit.cover),
              ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Image.asset("images/${controller.hibakSzama()}.png", width: 200,),
                Text(
                  controller.csillagosSzoveg,
                  style: TextStyle(fontSize: 25),
                ),
                Column(
                  children: [
                    LetterHolder(
                      letters: ["A", "Á", "B", "C", "D", "E"],
                      controller: controller,
                    ),
                    LetterHolder(
                      letters: ["É", "F", "G", "H", "I", "Í"],
                      controller: controller,
                    ),
                    LetterHolder(
                      letters: ["J", "K", "L", "M", "N", "O"],
                      controller: controller,
                    ),
                    LetterHolder(
                      letters: ["Ó", "Ö", "Ő", "P", "Q", "R"],
                      controller: controller,
                    ),
                    LetterHolder(
                      letters: ["S", "T", "U", "Ú", "Ü", "Ű"],
                      controller: controller,
                    ),
                    LetterHolder(
                      letters: ["V", "W", "X", "Y", "Z", " "],
                      controller: controller,
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
