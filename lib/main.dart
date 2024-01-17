import 'package:flutter/material.dart';
import 'package:shop_ui/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          background: const Color.fromRGBO(254, 87, 32, 1.0),
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
