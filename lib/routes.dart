import 'package:flutter/material.dart';
import 'package:flutter_play/ui/home.dart';
import 'package:flutter_play/ui/info.dart';

void main() => runApp(PlayApp());

class PlayApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {'/': (context) => Home(), '/info': (context) => Info()},
    );
  }
}
