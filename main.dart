import 'package:flutter/material.dart';
import 'questionario.dart';

void main() {
  runApp(AulaComponentes());
}

class AulaComponentes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Inicio(),
    );
  }
}

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jogo de perguntas e respostas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Aqui haverá um questionário de perguntas e respostas, divirta-se!',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Questionario()),
                );
              },
              child: Text('Iniciar'),
            ),
          ],
        ),
      ),
    );
  }
}
