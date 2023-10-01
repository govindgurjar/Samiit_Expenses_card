import 'package:fleet_vision/service_and_maintainance_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fleet Vision Expenses Card Widget',
      home: ServicePage(),
    );
  }
}
