import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Ficha Estudantil'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Ficha(
                foto: 'https://media.istockphoto.com/id/1278139568/pt/foto/studio-portrait-of-20-year-old-woman.jpg?s=612x612&w=0&k=20&c=NipIoQzg7TsYHdYdOsLkncvLKof7Xp8MQTuzMWD0ZOI=',
                nome: 'Luisa Gontijo',
                matricula: generateRandomNumber(),
                escola: 'Cefet - Campus V',
                serie: '1º ano',
              ),
              SizedBox(height: 20),
              Ficha(
                foto: 'https://storage.alboom.ninja/sites/56081/albuns/1096019/221028_iuryesquarcio_8528.jpg?t=1669214646',
                nome: 'Gabriel Henrique Castro Alves',
                matricula: generateRandomNumber(),
                escola: 'Escola Estadual Joaquim Nabuco',
                serie: '3º ano',
              ),
              SizedBox(height: 20),
              Ficha(
                foto: 'https://media.licdn.com/dms/image/C4E03AQEZlbfytKCycQ/profile-displayphoto-shrink_800_800/0/1555370121979?e=2147483647&v=beta&t=tWxc7lSVTKRGiumJJ7XIJpchZvQy9WxVEmWrUU8Py0A',
                nome: 'Marcela Silva de Andrade',
                matricula: generateRandomNumber(),
                escola: 'Universidade Federal de Minas Gerais',
                serie: '4º Período',
              ),
            ],
          ),
        ),
      ),
    ),
  ));
}

class Ficha extends StatelessWidget {
  final String foto;
  final String nome;
  final int matricula;
  final String escola;
  final String serie;

  const Ficha({
    required this.foto,
    required this.nome,
    required this.matricula,
    required this.escola,
    required this.serie,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 150,
              width: 150,
              child: Image.network(
                foto,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Nome: $nome',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text('Matrícula: $matricula'),
            SizedBox(height: 5),
            Text('Escola: $escola'),
            SizedBox(height: 5),
            Text('Série: $serie'),
          ],
        ),
      ),
    );
  }
}

int generateRandomNumber() {
  Random random = Random();
  return random.nextInt(100000);
}