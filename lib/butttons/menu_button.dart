import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({super.key, required this.menuButtonClicked});

  final Function menuButtonClicked;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 60,
      minWidth: 200,
      child: IconButton(
        onPressed: () {
          menuButtonClicked();
        },
        icon: const Icon(Icons.play_arrow),
        color: Colors.red,
      ),
    );
  }
}
