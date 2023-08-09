import 'package:flutter/material.dart';

import 'package:fitbank_alura/pages/models/transferencia.dart';

class ItemTransferencia extends StatelessWidget {
  final Transferencia transferencia;

  const ItemTransferencia({
    Key? key,
    required this.transferencia,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.monetization_on_outlined),
        title: Text(transferencia.valor.toString()),
        subtitle: Text(transferencia.valor.toString()),
      ),
    );
  }
}
