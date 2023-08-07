import 'package:flutter/material.dart';

class TrasfersTile extends StatelessWidget {

  final int account;
  final double value;

  const TrasfersTile({ super.key, required this.account, required this.value });

   @override
   Widget build(BuildContext context) {
       return Card(
            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
                const Icon(Icons.money),
                Column(
                  children: [
                  Text(account.toString()),
                  Text(value.toString()),
                ],
                )
              ],
            ),
          );
  }
}