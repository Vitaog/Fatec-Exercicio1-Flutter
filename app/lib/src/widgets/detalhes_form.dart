import 'package:flutter/material.dart';
import '../pages/confirmacao_pedido.dart';

class DetalhesForm extends StatelessWidget {
  final String produto;

  DetalhesForm({required this.produto});

  @override
  Widget build(BuildContext context) {
    final TextEditingController quantidadeController = TextEditingController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Produto',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        TextField(
          readOnly: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: produto,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Quantidade',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        TextField(
          controller: quantidadeController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Digite a quantidade',
          ),
        ),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Volta para a lista de produtos
              },
              child: Text('Voltar'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 50),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Navega para a tela de confirmação de pedido
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ConfirmacaoPedido(),
                  ),
                );
              },
              child: Text('Enviar'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 50),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
