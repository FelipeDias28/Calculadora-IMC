import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController weighthControler = TextEditingController();
  TextEditingController heightControler = TextEditingController();

  String _infoText = "Informe seus dados!";

  void _resetFields() {
    weighthControler.clear();
    heightControler.clear();
    _infoText = "Informe seus dados!";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora IMC"),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: _resetFields,
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(
              Icons.person_outline,
              size: 120.0,
              color: Colors.green,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Peso (Kg)",
                labelStyle: TextStyle(color: Colors.green),
              ),
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.green,
                fontSize: 20.0,
              ),
              controller: weighthControler,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Altura (cm)",
                labelStyle: TextStyle(color: Colors.green),
              ),
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.green,
                fontSize: 20.0,
              ),
              controller: heightControler,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
                bottom: 8.0,
              ),
              child: SizedBox(
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    textStyle:
                        const TextStyle(fontSize: 25.0, color: Colors.white),
                    backgroundColor: Colors.green,
                  ),
                  child: const Text(
                    "Calcular",
                  ),
                ),
              ),
            ),
            Text(
              _infoText,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.green,
                fontSize: 25.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
