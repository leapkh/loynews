import 'package:flutter/material.dart';
import 'package:loynews/src/ui/screen/landing_screen.dart';

void main() {
  MaterialApp app = MaterialApp(
    home: LandingScreen(),
    title: 'Loynews',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
    primarySwatch: Colors.blue,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      foregroundColor: Colors.black,
      ),
    ),
  );

  runApp(app);
}
