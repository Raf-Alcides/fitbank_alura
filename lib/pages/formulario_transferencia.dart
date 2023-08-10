

import 'package:fitbank_alura/components/botao.dart';
import 'package:flutter/material.dart';

import '../models/transferencia.dart';

class FormularioTransferencia extends StatefulWidget {
  final TextEditingController controllerAccount = TextEditingController();
  final TextEditingController controllerValue = TextEditingController();

  FormularioTransferencia({super.key});

  @override
  State<FormularioTransferencia> createState() =>
      _FormularioTransferenciaState();
}

class _FormularioTransferenciaState extends State<FormularioTransferencia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criar Transferencia'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 25, left: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Valor da Tranferência',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                _CustomTextField(
                  controller: widget.controllerValue,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 25, left: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Conta',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                _CustomTextField(
                  controller: widget.controllerAccount,
                ),
              ],
            ),
          ),
          Botao(
            label: 'Criar Agora',
            onPressed: () {
              final account = int.tryParse(widget.controllerAccount.text);
              final value = double.tryParse(widget.controllerValue.text);

              if (value != null && account != null) {
                final transferenciaCriada =
                    Transferencia(valor: value, numeroConta: account);

                Navigator.pop<Transferencia>(context, transferenciaCriada);
              }
            },
          ),
        ],
      ),
    );
  }

  
}

class _CustomTextField extends StatelessWidget {
  final TextEditingController controller;

  const _CustomTextField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: SizedBox(
        height: 50,
        child: TextFormField(
          textAlign: TextAlign.center,
          controller: controller,
          keyboardType: TextInputType.number,
          cursorColor: const Color(0xff7C98FB),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Color(0xff7C98FB))),
          ),
        ),
      ),
    );
  }
}
