// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'components/trasfers_tile.dart';

class CreateTransferPage extends StatelessWidget {
  CreateTransferPage({super.key});

  final TextEditingController _controllerAccount = TextEditingController();
  final TextEditingController _controllerValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criar Transferencia'),
      ),
      body: Column(
        children: [
          _CustomTextField(
            controller: _controllerAccount,
            hintText: '0000-0000-0000',
            label: 'Conta',
          ),
          _CustomTextField(
            controller: _controllerValue,
            hintText: '00,0',
            label: 'valor',
          ),
          ElevatedButton(
            onPressed: () {
              final account = int.tryParse(_controllerAccount.text) ;
              final value = double.tryParse(_controllerValue.text);

              if(value != null && account != null) {
                TrasfersTile(account: account, value: value,);
              }


            },
            child: const Text('Criar Agora'),
          )
        ],
      ),
    );
  }
}

class _CustomTextField extends StatelessWidget {
  final String hintText;
  final String label;
  final TextEditingController controller;
  IconData? icon;

  _CustomTextField({
    Key? key,
    required this.hintText,
    required this.label, required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          hintText: hintText,
          label: Text(label),
          icon: Icon(icon),
        ),
      ),
    );
  }
}
