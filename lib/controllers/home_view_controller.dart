import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hangman/views/game_view.dart';

class HomeViewController extends GetxController {
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController school = TextEditingController();

  void jatekInditasa() {
    if (firstname.text != "" && lastname.text != "" && school.text != "") {
      Get.to(GameView(), transition: Transition.cupertino);
    } else if (firstname.text == "") {
      Get.showSnackbar(GetSnackBar(message: "nem adtad meg a keresztneved"));
    } else if (lastname.text == "") {
      Get.showSnackbar(GetSnackBar(message: "nem adtad meg a keresztneved"));
    } else {
      Get.showSnackbar(GetSnackBar(message: "nem adtad meg a keresztneved"));
    }
  }
}
