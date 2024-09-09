import 'package:flutter/material.dart';
import '../pages/detalhes_da_compra.dart'; // Importa a página de detalhes da compra

class ProdutoList extends StatelessWidget {
  final List<String> produtos = ['Produto 1', 'Produto 2', 'Produto 3'];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: produtos.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.shopping_bag),
          title: Text(produtos[index]),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    DetalhesDaCompra(produto: produtos[index]),
              ),
            );
          },
        );
      },
    );
  }
}
