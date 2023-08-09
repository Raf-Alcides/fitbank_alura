import 'package:flutter/material.dart';
import 'package:fitbank_alura/pages/models/transferencia.dart';

class ItemTransferencia extends StatefulWidget {
  final Transferencia transferencia;
  bool verificacao = true;

  ItemTransferencia({
    Key? key,
    required this.transferencia,
  }) : super(key: key);

  @override
  State<ItemTransferencia> createState() => _ItemTransferenciaState();
}

class _ItemTransferenciaState extends State<ItemTransferencia> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.green,
                blurRadius: 5,
                spreadRadius: 1,
              )
            ]),
        child: ListTile(
          dense: true,
          leading: Icon(
            Icons.monetization_on_outlined,
            color: Colors.green[900],
          ),
          trailing: Icon(
            Icons.check,
            color: Colors.green[900],
          ),
          title: Text(
            'Valor: R\$ ${widget.transferencia.valor}0'.toString(),
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Text(
            'Conta: ${widget.transferencia.numeroConta}'.toString(),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
