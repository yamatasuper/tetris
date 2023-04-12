import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tetris/butttons/menu_button.dart';
import 'package:tetris/screens/game.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    void onPlayClicked() {
      if (kDebugMode) {
        print('menuButton');
      }
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Game(),
        ),
      );
    }

    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              const Text(
                'Tetris',
                style: TextStyle(
                  fontSize: 70.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  shadows: [
                    Shadow(
                      color: Colors.red,
                      blurRadius: 8.0,
                      offset: Offset(2.0, 2.0),
                    ),
                  ],
                ),
              ),
              MenuButton(
                menuButtonClicked: onPlayClicked,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
