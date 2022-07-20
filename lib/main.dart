import 'package:flutter/material.dart';
import 'package:loynews/src/ui/screen/landing_screen.dart';

void main() {
  MaterialApp app = MaterialApp(
    home: LandingScreen(),
    title: 'Loynews',
    debugShowCheckedModeBanner: false,
  );

  runApp(app);
}
