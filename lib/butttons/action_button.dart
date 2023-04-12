import 'package:flutter/material.dart';
import 'package:tetris/screens/game.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.buttonTapped,
    required this.icon,
    required this.buttonNextAction,
  });
  final Function buttonTapped;
  final Icon icon;
  final ButtonPressed buttonNextAction;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        buttonTapped(buttonNextAction);
      },
      icon: icon,
    );
  }
}
