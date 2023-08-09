import 'package:fitbank_alura/pages/components/item_transferencia.dart';
import 'package:fitbank_alura/pages/formulario_transferencia.dart';
import 'package:flutter/material.dart';

class Transferencias extends StatefulWidget {
  final List _transferencia = [];

  Transferencias({super.key});

  @override
  State<Transferencias> createState() => _TransferenciasState();
}

class _TransferenciasState extends State<Transferencias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transferências'),
      ),
      body: ListView.builder(
        itemCount: widget._transferencia.length,
        itemBuilder: (_, index) {
          final transferencia = widget._transferencia[index];
          return ItemTransferencia(transferencia: transferencia);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Future future =
              Navigator.of(context).push(MaterialPageRoute(builder: (_) {
            return const FormularioTransferencia();
          }));

          future.then((transferenciarecebida) {
            Future.delayed(const Duration(seconds: 5), () {
              debugPrint(transferenciarecebida);
              if (transferenciarecebida != null) {
                setState(() {
                  widget._transferencia.add(transferenciarecebida);
                });
              }
            });
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
