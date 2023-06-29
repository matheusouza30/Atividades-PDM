import 'package:flutter/material.dart';

class InicioComponente extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu APP de Perguntas e Respostas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bem-vindo ao nosso APP de Perguntas e Respostas!',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Iniciar Questionário'),
              onPressed: () {
                // Função a ser executada ao clicar no botão de iniciar o questionário
                iniciarQuestionario();
              },
            ),
          ],
        ),
      ),
    );
  }

  void iniciarQuestionario() {
    // Lógica para navegar para a página do questionário ou realizar outras ações
  }
}
