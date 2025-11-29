import 'package:flutter/material.dart';

class PaginaTeste extends StatelessWidget {
  const PaginaTeste({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina Teste'),
      ),
      body: Text('Essa Pagina é Teste'),
    );
  }
}
