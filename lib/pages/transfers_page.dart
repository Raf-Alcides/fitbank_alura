import 'package:fitbank_alura/pages/components/trasfers_tile.dart';
import 'package:flutter/material.dart';

import 'create_transfer_page.dart';

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
      body: ListView(
        children: const [
          TrasfersTile(account: 0001-1111-0000, value: 100),
          TrasfersTile(account: 0001-1111-0000, value: 200),
          TrasfersTile(account: 0001-1111-0000, value: 300),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => CreateTransferPage())
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
