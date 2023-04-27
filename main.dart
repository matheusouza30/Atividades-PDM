import 'package:flutter/material.dart';

main() {
  runApp(ComponenteInicial());
}

class ComponenteInicial extends StatefulWidget {
  @override
  State<ComponenteInicial> createState() => _ComponenteInicialState();
}

class _ComponenteInicialState extends State<ComponenteInicial> {
  var contador = 0;

  final perguntas = [
    "Sua comida favorita é?",
    "Qual o seu esporte favorito",
    "Qual a sua cor preferida?",
    "Qual o seu animal de estimacao?"
  ];

  void eventobotao() {
    setState(() {
      contador:
      contador++;
    });
    print(contador);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Perguntas e respostas!"),
            ),
            body: Column(
              children: [
                Text(perguntas[contador]),
                ElevatedButton(
                  onPressed: eventobotao,
                  child: Text("Clique para a proxima pergunta"),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("Outra função");
                  },
                  child: Text("Clique para outra função"),
                ),
                ElevatedButton(
                  onPressed: () => print("Função arrow"),
                  child: Text("Meu botao"),
                ),
                Column(children: <Widget>[
                  Text('Perguntas'),
                  Text('em'),
                  Text('Flutter'),
                ]),
              ],
            )));
  }
}
