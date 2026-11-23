import 'package:flutter/material.dart';
import 'widgets/button_section.dart';
import 'widgets/title_section.dart';

void main() {
  runApp(const Licao14FlutterApp());
}

class Licao14FlutterApp extends StatelessWidget {
  const Licao14FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter Layout & Interatividade - Lição 14';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
          centerTitle: true,
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 600),
              child: Column(
                children: [
                  Image.network(
                    'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=800&q=80',
                    width: double.infinity,
                    height: 240,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      height: 240,
                      color: Colors.indigo.shade100,
                      child: const Center(
                        child: Icon(Icons.landscape, size: 64, color: Colors.indigo),
                      ),
                    ),
                  ),
                  const TitleSection(
                    name: 'Acampamento Lago Oeschinen',
                    location: 'Kandersteg, Suíça',
                  ),
                  const ButtonSection(),
                  const Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Text(
                      'O Lago Oeschinen fica aos pés do Blüemlisalp nos Alpes Berneses. '
                      'Situado a 1.578 metros acima do nível do mar, é um dos maiores '
                      'lagos alpinos. Um passeio de gôndola a partir de Kandersteg, '
                      'seguido por uma caminhada de meia hora por pastagens e florestas '
                      'de pinheiros, leva você ao lago, que aquece até 20 graus Celsius no verão.',
                      softWrap: true,
                      style: TextStyle(fontSize: 15, height: 1.5),
                    ),
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
