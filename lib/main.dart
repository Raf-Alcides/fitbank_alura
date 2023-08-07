import 'package:flutter/material.dart';

import 'transfers_page.dart';
void main() {
  runApp(const FitBank());
}

class FitBank extends StatelessWidget {
  const FitBank({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fit Bank',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TransfersPage(),
    );
  }
}
