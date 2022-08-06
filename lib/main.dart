import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loynews/firebase_options.dart';
import 'package:loynews/src/ui/screen/landing_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );

  final app = GetMaterialApp(
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
