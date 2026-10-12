import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Container e Column',
      home: const TelaPrincipal(),
    );
  }
}

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atividade: Container e Column'),
      ),
      body: Container(
        // Container principal - estrutura que envolve tudo
        width: double.infinity,
        color: Colors.grey[200],
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 1º elemento: Ícone dentro de um Container próprio
            Container(
              color: Colors.blue[100],
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(bottom: 12),
              child: const Icon(
                Icons.flutter_dash,
                size: 60,
                color: Colors.blue,
              ),
            ),

            // 2º elemento: Texto dentro de um Container próprio
            Container(
              color: Colors.green[100],
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.only(bottom: 12),
              child: const Text(
                'Aprendendo Container e Column no Flutter!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),

            // 3º elemento: Imagem dentro de um Container próprio
            Container(
              color: Colors.orange[100],
              padding: const EdgeInsets.all(12),
              child: Image.asset(
                'img/joao.jpeg', 
                width: 200,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}