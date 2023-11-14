import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hangman/controllers/home_view_controller.dart';
import 'package:hangman/views/game_view.dart';

class HomeView extends StatelessWidget {
  HomeViewController controller = Get.put(HomeViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewController>(
        init: controller,
        builder: (_) {
          return Scaffold(
            appBar: AppBar(
                backgroundColor: Color.fromARGB(255, 57, 61, 63),
                title: Center(child: Text("Hangman"))),
            body: Container(
      
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/minimal.jpg"),
                    fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: TextField(
                      controller: controller.firstname,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "add meg a keresztneved",
                        labelText: "Keresztnév",
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: TextField(
                      controller: controller.lastname,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "add meg a vezetékneved",
                        labelText: "Vezetéknév",
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: TextField(
                      controller: controller.school,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "add meg az iskolád",
                        labelText: "Iskolád",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: CupertinoButton(
                      color: Color.fromARGB(255, 98, 146, 158),
                      child: Text("Start game"),
                      onPressed: () {
                        controller.jatekInditasa();
                      },
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
