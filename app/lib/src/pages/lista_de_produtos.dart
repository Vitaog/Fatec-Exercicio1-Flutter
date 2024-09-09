import 'package:flutter/material.dart';
import '../widgets/produto_list.dart';

class ListaDeProdutos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Produtos'),
      ),
      body: ProdutoList(),
    );
  }
}
