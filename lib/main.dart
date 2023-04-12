import 'package:flutter/material.dart';
import 'package:tetris/screens/menu.dart';

const double widthScreen = 300;
const double heightScreen = 400;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green.withOpacity(0.5),
        appBar: AppBar(
          title: const Text('Main Menu'),
        ),
        body: const Menu());
  }
}
