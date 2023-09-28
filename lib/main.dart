import 'package:flutter/material.dart';

import 'expenses_widget.dart';

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
      home: HomePage(),
    );
  }
}
