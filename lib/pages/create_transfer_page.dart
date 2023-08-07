// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CreateTransferPage extends StatelessWidget {
  const CreateTransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criar Transferencia'),
      ),
      body: Column(
        children: [
          _CustomTextField(
            hintText: '0000-0000-0000',
            label: 'Conta',
          ),
          _CustomTextField(
            hintText: '00,0',
            label: 'valor',
          ),
          ElevatedButton(
            onPressed: () {},
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
  IconData? icon;

  _CustomTextField({
    Key? key,
    required this.hintText,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: TextField(
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
