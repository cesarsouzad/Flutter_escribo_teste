import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 58, 183, 96)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Teste Escribo Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _textFieldController = TextEditingController();
  int _resultado = 0;

  List<int> _numerosSomados = [];
  // array vazio para capturar os numeros

  @override
  void initState() {
    super.initState();
    _textFieldController.addListener(_calcularSomatorioAutomatico);
    // ao digitar um numero um monitoramento é feito chamando a função
  }

  void _calcularSomatorioAutomatico() {
    int numero = int.tryParse(_textFieldController.text) ?? 0;
    List<int> numerosSomados = obterNumerosSomados(numero);
    int resultado = somatorioDivisiveisPor3ou5(numerosSomados);
    setState(() {
      _resultado = resultado;
      _numerosSomados = numerosSomados;
    });
  }

  List<int> obterNumerosSomados(int numero) {
    List<int> numeros = [];

    for (int i = 0; i < numero; i++) {
      if (i % 3 == 0 || i % 5 == 0) {
        numeros.add(i);
      }
    }

    return numeros;
  }

  int somatorioDivisiveisPor3ou5(List<int> numeros) {
    int somatorio = 0;
    for (int numero in numeros) {
      somatorio += numero;
    }
    return somatorio;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Digite um número inteiro:',
              style: TextStyle(fontSize: 20),
            ),
            TextField(
              controller: _textFieldController,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40),
              onChanged: (value) {},
            ),
            SizedBox(height: 20),
            Text('Números somados: $_numerosSomados'),
            SizedBox(height: 20),
            Text('Resultado: $_resultado', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
