import 'package:flutter/material.dart';
import 'package:spring_edge_flutter_assignment/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spring Edge Flutter Assignment',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff445D75)),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}
