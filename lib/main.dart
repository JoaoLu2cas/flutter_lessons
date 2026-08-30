import 'package:flutter/material.dart';

// Ponto de entrada do aplicativo (Parte 1 do PDF)
void main() {
  runApp(const MeuApp());
}

// Widget raiz (Parte 2 do PDF)
class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove a faixa de DEBUG no topo
      home: Scaffold(
        // ATIVIDADE ITEM 3: Mudança da cor de fundo (ex: Colors.teal, Colors.indigo, Colors.purple)
        backgroundColor: Colors.teal,
        body: SafeArea(
          // SafeArea garante que o conteúdo não fique sob o notch ou barra de status
          child: Center(
            // Centraliza todo o cartão na tela
            child: Padding(
              padding: const EdgeInsets.all(20.0), // Espaçamento de 20px nas bordas
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // -----------------------------------------------------------
                  // ATIVIDADE ITEM 1: Trocar Foto, Nome e Profissão
                  // -----------------------------------------------------------
                  
                  // 1. Foto de perfil circular
                  const CircleAvatar(
                    radius: 75,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('img/joao.jpeg'),
                  ),
                  const SizedBox(height: 20), // Respiro entre a foto e o nome

                  // 2. Nome em destaque
                  const Text(
                    'João Luccas Marques',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),

                  // 3. Profissão / Subtítulo
                  const Text(
                    'Desenvolvedor Flutter',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 30), // Espaço maior para separar o cabeçalho dos contatos

                  // -----------------------------------------------------------
                  // ATIVIDADE ITEM 2 & BÔNUS: Atualizar Dados e Trocar Ícones
                  // -----------------------------------------------------------

                  // 4. Linha de E-mail
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.email, color: Colors.white),
                      SizedBox(width: 10),
                      Text(
                        'joaoluccasmarks@gmail.com',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),

                  // 5. Linha de Telefone
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.phone, color: Colors.white),
                      SizedBox(width: 10),
                      Text(
                        '+55 (62) 99122-4923',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),

                  // 6. Linha de Rede Social (Ícones Bônus: Icons.camera_alt, Icons.link, etc.)
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // BÔNUS: Ícone trocado para camera_alt (representando Instagram) ou link (LinkedIn)
                      Icon(Icons.camera_alt, color: Colors.white),
                      SizedBox(width: 10),
                      Text(
                        '@Joaolu2cas',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 15),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.link, color: Colors.white),
                      SizedBox(width: 10),
                      Text(
                        'linkedin.com/in/joaoluccasm/',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}