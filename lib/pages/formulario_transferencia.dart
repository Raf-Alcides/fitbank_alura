import 'package:fitbank_alura/pages/models/transferencia.dart';
import 'package:flutter/material.dart';

class FormularioTransferencia extends StatefulWidget {
  const FormularioTransferencia({super.key});

  @override
  State<FormularioTransferencia> createState() => _FormularioTransferenciaState();
}

class _FormularioTransferenciaState extends State<FormularioTransferencia> {
  @override
  Widget build(BuildContext context) {

    final TextEditingController controllerAccount = TextEditingController();
    final TextEditingController controllerValue = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Criar Transferencia'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _CustomTextField(
              controller: controllerAccount,
              hintText: '0000-0000-0000',
              label: 'Conta',
            ),
            _CustomTextField(
              controller: controllerValue,
              hintText: '00,0',
              label: 'valor',
              icon: Icons.monetization_on,
            ),
            ElevatedButton(
              child: const Text('Criar Agora'),
              onPressed: () {
                final account = int.tryParse(controllerAccount.text);
                final value = double.tryParse(controllerValue.text);
      
                if (value != null && account != null) {
                  debugPrint('Criando transferencia');
                  final transferenciaCriada =
                      Transferencia(valor: value, numeroConta: account);
                  debugPrint('$transferenciaCriada');
                  Navigator.pop<Transferencia>(context, transferenciaCriada);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomTextField extends StatelessWidget {
  final String hintText;
  final String label;
  final TextEditingController controller;
  final IconData? icon;

  const _CustomTextField({
    Key? key,
    required this.hintText,
    required this.label,
    required this.controller,
    this.icon,
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
          icon: icon != null ? Icon(icon) : null,
        ),
      ),
    );
  }
}
