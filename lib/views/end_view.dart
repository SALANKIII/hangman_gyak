import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hangman/controllers/end_view_controller.dart';
import 'package:hangman/views/home_view.dart';

class EndView extends StatelessWidget {
  String uzenet;
  int index;
  EndView(this.uzenet, this.index);

  EndViewController controller = Get.put(EndViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EndViewController>(
        init: controller,
        builder: (_) {
          return Stack(
            children: [
              Scaffold(
                body: Container(
                   width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/minimal.jpg"),
                    fit: BoxFit.cover),
              ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        (index < 6)
                            ? Image.asset(
                                "images/celebrate.png",
                                width: 200,
                              )
                            : Image.asset("images/$index.png"),
                        Text(
                          uzenet,
                          style: TextStyle(fontSize: 30),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CupertinoButton(
                          color: Color.fromARGB(255, 98, 146, 158),
                          child: Text("Vissza a kezdőlapra"),
                          onPressed: () {
                            Get.offAll(HomeView());
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
             (index<6)
              ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ConfettiWidget(
                      confettiController: controller.confettiController,
                      shouldLoop: true,
                      blastDirectionality: BlastDirectionality.explosive,
                    ),
                  ],
                ),
              )
              : Container(),
            ],
          );
        });
  }
}
