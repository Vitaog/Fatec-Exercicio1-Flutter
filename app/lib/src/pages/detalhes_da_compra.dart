import 'package:flutter/material.dart';
import '../widgets/detalhes_form.dart';

class DetalhesDaCompra extends StatelessWidget {
  final String produto;

  DetalhesDaCompra({required this.produto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes da Compra'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: DetalhesForm(produto: produto),
      ),
    );
  }
}
