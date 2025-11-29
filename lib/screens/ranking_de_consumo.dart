import 'package:flutter/material.dart';

class RankingDeConsumo extends StatelessWidget {
  const RankingDeConsumo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ranking de Consumo', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  'assets/images/icone-ranking.png',
                  width: 200,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Top 5 – Aparelhos que Mais Consomem Energia em Casa', textAlign: TextAlign.center, style: TextStyle(fontSize: 30, fontWeight: .bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      height: 1.5,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: '1. Chuveiro Elétrico', style: TextStyle(fontSize: 20, fontWeight: .bold)),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: 'O aparelho com maior impacto na conta de luz. Sua alta potência, somada ao uso diário, faz dele o principal responsável pelo consumo residencial.'),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: '2. Ar-Condicionado', style: TextStyle(fontSize: 20, fontWeight: .bold)),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: 'Exige bastante energia para resfriar e manter a temperatura de um ambiente. Quanto maior o tempo de uso, maior o consumo.'),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: '3. Geladeira / Freezer', style: TextStyle(fontSize: 20, fontWeight: .bold)),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: 'Apesar de não ter uma potência tão alta, permanece ligado 24 horas por dia, o que acumula consumo ao longo do mês.'),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: '4. Máquina de Lavar e Secadora', style: TextStyle(fontSize: 20, fontWeight: .bold)),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: 'Motores, centrifugação e (em alguns modelos) aquecimento de água aumentam significativamente o gasto de energia.'),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: '5. Ferro de Passar Roupa', style: TextStyle(fontSize: 20, fontWeight: .bold)),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: 'A resistência interna necessita de muita energia para manter a alta temperatura, fazendo o consumo subir durante o uso prolongado.'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
