import 'package:flutter/material.dart';

class Botao extends StatefulWidget {

  final String label;
  final Function() onPressed;

  const Botao({
    Key? key,
    
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<Botao> createState() => _BotaoState();
}

class _BotaoState extends State<Botao> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.fromLTRB(30, 0, 30, 50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        onPressed: widget.onPressed,
        child: Text(widget.label),
      ),
    );
  }
}
