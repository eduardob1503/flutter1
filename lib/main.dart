import 'package:flutter/material.dart';
import 'calculoA.dart';
import 'Erro.dart';
import 'package:barcetter/BLLcalculoA.dart' ;
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String resposta = '';
  TextEditingController controleB = TextEditingController();
  TextEditingController controleH = TextEditingController();

  void calcularA() {
    setState(() {
      calculoA calc = calculoA();
      calc.valorB = controleB.text;
      calc.valorH = controleH.text;
      BLLcalculoA.validaDados(calc);
      if (Erro.error) {
        resposta = Erro.msg;
      } else {
        resposta = calc.area;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cálculo da Área do Triângulo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Digite a base do triângulo:'),
                SizedBox(width: 10),
                Container(
                  width: 100,
                  child: TextField(
                    controller: controleB,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Digite a altura do triângulo:'),
                SizedBox(width: 10),
                Container(
                  width: 100,
                  child: TextField(
                    controller: controleH,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: calcularA,
              child: Text('Calcular'),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Sua área é:'),
                SizedBox(width: 10),
                Text(resposta),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
