import 'package:flutter/material.dart';

import 'pages/transferencias.dart';

void main() {
  runApp(const FitBank());
}

class FitBank extends StatelessWidget {
  const FitBank({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fit Bank',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white.withAlpha(230),
          appBarTheme: const AppBarTheme(
            color: Color(0xff7C98FB),
            toolbarHeight: 70,
            titleSpacing: 30,
            titleTextStyle: TextStyle(fontSize: 20),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                const Color(0xff7C98FB),
              ),
              textStyle: MaterialStateProperty.all<TextStyle>(
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            ),
          )),
      home: Transferencias(),
    );
  }
}
