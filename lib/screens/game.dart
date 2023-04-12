import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tetris/butttons/action_button.dart';
import 'package:tetris/main.dart';

enum ButtonPressed { left, right, rotate, none }

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  ButtonPressed performAction = ButtonPressed.none;

  void onButtonPressed(ButtonPressed buttonPressed) {
    setState(() {
      performAction = buttonPressed;
      if (kDebugMode) {
        print('change state $performAction');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              width: widthScreen,
              height: heightScreen,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ActionButton(
                  buttonTapped: onButtonPressed,
                  icon: const Icon(
                    Icons.arrow_left,
                  ),
                  buttonNextAction: ButtonPressed.left,
                ),
                ActionButton(
                  buttonTapped: onButtonPressed,
                  icon: const Icon(
                    Icons.arrow_right,
                  ),
                  buttonNextAction: ButtonPressed.right,
                ),
                ActionButton(
                  buttonTapped: onButtonPressed,
                  icon: const Icon(
                    Icons.rotate_90_degrees_ccw,
                  ),
                  buttonNextAction: ButtonPressed.rotate,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
