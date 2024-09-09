import 'package:flutter/material.dart';
import '../pages/lista_de_produtos.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _loginController,
            decoration: InputDecoration(
              labelText: 'Login',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, insira o login';
              }
              return null;
            },
          ),
          SizedBox(height: 20),
          TextFormField(
            controller: _senhaController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Senha',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, insira a senha';
              }
              return null;
            },
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                if (_loginController.text == 'Vitor' &&
                    _senhaController.text == '123') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListaDeProdutos()),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Login ou senha inválidos')),
                  );
                }
              }
            },
            child: Text('Enviar'),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 50),
            ),
          ),
        ],
      ),
    );
  }
}
