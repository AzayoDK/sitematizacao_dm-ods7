import 'package:flutter/material.dart';
import 'package:sitematizacao_pdm/screens/calculadora_de_consumo.dart';
import 'package:sitematizacao_pdm/screens/dicas_de_eficiencia_energetica.dart';
import 'package:sitematizacao_pdm/screens/ranking_de_consumo.dart';
import 'package:sitematizacao_pdm/screens/sobre_app.dart';
import '../widgets/menu.dart';

class HomePage extends StatelessWidget {
  // Itens do Menu
  final List<CatalogoItem> meusItensDeMenu = [
    CatalogoItem(
      titulo: 'Calculadora de Consumo',
      icone: Icons.calculate,
      descricao: 'Descubra quanto cada aparelho gasta.',
      destino: CalculadoraDeConsumo(),
    ),
    CatalogoItem(
      titulo: 'Dicas de Economia',
      icone: Icons.lightbulb,
      descricao: 'Aprenda a reduzir o gasto de energia.',
      destino: DicasDeEficienciaEnergetica(),
    ),
    CatalogoItem(
      titulo: 'Ranking de Consumo',
      icone: Icons.insert_chart,
      descricao: 'Veja quais aparelhos gastam mais.',
      destino: RankingDeConsumo(),
    ),
    CatalogoItem(
      titulo: 'Sobre',
      icone: Icons.info,
      descricao: 'Entenda o objetivo do app e da ODS 7',
      destino: SobreApp(),
    ),
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Energia Acessível e Limpa',
          style: TextStyle(color: Colors.white),
        ),
        leading: Container(),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Text(
              //     'Energia Sustentável para Todos',
              //     textAlign: TextAlign.center,
              //     style: TextStyle(
              //       fontSize: 25,
              //       fontWeight: FontWeight.bold,
              //       color: Colors.green,
              //     ),
              //   ),
              // ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 180,
                  child: Image.asset(
                    'assets/images/icone-botanico-de-folha.webp',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: Text(
                  'Bem-vindo ao app Energia Acessível e Limpa! Nosso objetivo é te ajudar a entender como a energia é usada no dia a dia, mostrar formas de economizar e incentivar escolhas mais sustentáveis. Através de cálculos, dicas e informações da ODS 7, você pode reduzir gastos e ainda colaborar com um planeta mais eficiente e consciente.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
          Menu(secoes: meusItensDeMenu),
        ],
      ),
    );
  }
}
