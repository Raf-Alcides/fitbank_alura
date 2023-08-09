import 'dart:async';

import 'package:fitbank_alura/pages/components/botao.dart';
import 'package:fitbank_alura/pages/components/item_transferencia.dart';
import 'package:fitbank_alura/pages/models/transferencia.dart';
import 'package:flutter/material.dart';

import 'formulario_transferencia.dart';

class Transferencias extends StatefulWidget {
  final List<Transferencia> _transferencia = [];

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          widget._transferencia.isNotEmpty
              ? Expanded(
                child: ListView.builder(
                    itemCount: widget._transferencia.length,
                    itemBuilder: (_, index) {
                      Transferencia transferencia = widget._transferencia[index];
                      return ItemTransferencia(transferencia: transferencia,);
                    },
                  ),
              )
              : Expanded(child: Image.asset('assets/wallet.png')),
          Botao(
            label: 'Adicionar Transferência',
            onPressed: () {
              
              getPageAndGetValue(context);
            },
          )
        ],
      ),
    );
  }


  void getPageAndGetValue(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return FormularioTransferencia();
        },
      ),
    ).then(
      (transferenciarecebida) {
        Future.delayed(
          const Duration(seconds: 5),
          () {
            if (transferenciarecebida != null) {
              setState(
                () {
                  widget._transferencia.add(transferenciarecebida);
                },
              );
            }
          },
        );
      },
    );
  }
}
