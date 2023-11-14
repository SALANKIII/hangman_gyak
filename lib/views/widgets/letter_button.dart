import 'package:flutter/cupertino.dart';
import 'package:hangman/controllers/game_view_controller.dart';

class LetterButton extends StatelessWidget {
  const LetterButton({
    required this.letter,
    required this.controller,
  });

  final GameViewController controller;
  final String letter;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      color: Color.fromARGB(255, 98, 146, 158),
      padding: EdgeInsets.zero,
      child: Text(letter),
      onPressed: (controller.aMegadottBetuVoltEmar(letter))
        ? null
        : ()=>controller.tippHozzaadasa(letter),
    );
  }
}
