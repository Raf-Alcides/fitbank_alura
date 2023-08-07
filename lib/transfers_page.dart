import 'package:fitbank_alura/pages/trasfers_tile.dart';
import 'package:flutter/material.dart';

class TransfersPage extends StatelessWidget {
  const TransfersPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transferências'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      body: const Column(
        children: [
          TrasfersTile(account: 'Conta 0001-1111-0000', value: 100),
          TrasfersTile(account: 'Conta 0001-1111-0000', value: 200),
          TrasfersTile(account: 'Conta 0001-1111-0000', value: 300),
        ],
      ),
    );
  }
}
