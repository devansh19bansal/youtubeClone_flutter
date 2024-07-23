import 'package:flutter/material.dart';
import 'package:youtube/screens/main_screen.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData.dark()));
}