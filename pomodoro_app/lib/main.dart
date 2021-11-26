import 'package:flutter/material.dart';
import 'home.dart';
import 'settings.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/settings': (context) => MyApp(),
    },
  ));
}
