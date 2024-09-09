import 'package:flutter/material.dart';
import '../pages/login_page.dart';

class ConfirmacaoPedido extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo_empresa.png',
                height: 150,
              ),
              SizedBox(height: 50),
              Text(
                'Pedido Confirmado!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                    (Route<dynamic> route) => false,
                  );
                },
                child: Text('Voltar'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 50),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
