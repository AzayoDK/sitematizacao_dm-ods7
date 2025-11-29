import 'package:flutter/material.dart';
import 'package:sitematizacao_pdm/widgets/links__fontes.dart';

class SobreApp extends StatefulWidget {
  const SobreApp({super.key});

  @override
  State<SobreApp> createState() => _SobreAppState();
}

class _SobreAppState extends State<SobreApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  'assets/images/icone-sobre.png',
                  width: 200,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Sobre o App & ODS 7', textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, fontWeight: .bold),),
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
                      TextSpan(
                          text: 'Esse aplicativo foi criado para ajudar você a entender e controlar o consumo de energia elétrica da sua casa, dando ferramentas simples e práticas para calcular o gasto dos aparelhos, identificar quais consomem mais, e adotar hábitos de uso consciente. A ideia é tornar energia acessível, transparente e — sobretudo — responsável.'),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: 'O que é ODS 7?',
                          style: TextStyle(fontSize: 20, fontWeight: .bold)),
                      TextSpan(text: '\n\n'),
                      TextSpan(
                          text: 'O ODS 7 é um dos 17 Objetivos de Desenvolvimento Sustentável definidos pela\nOrganização das Nações Unidas (ONU). Ele tem como meta principal:'),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: '“Assegurar o acesso confiável, sustentável, moderno e a preço acessível à energia para todas e todos.”', style: TextStyle(fontStyle: .italic)),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: 'Entre suas diretrizes estão:'),
                      TextSpan(text: '\n'),
                      TextSpan(text: '● Garantir energia para toda a população, de forma confiável e acessível.'),
                      TextSpan(text: '\n'),
                      TextSpan(text: '● Estimular o uso de fontes renováveis e limpas para a geração de energia.'),
                      TextSpan(text: '\n'),
                      TextSpan(text: '● Promover eficiência energética, ou seja, consumir menos sem perder conforto ou utilidade.'),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: 'Esse app se inspira diretamente no ODS 7: ele dá ao usuário poder de entender e conscientizar-se sobre o consumo, permitindo decisões mais inteligentes — seja no uso diário de equipamentos ou na escolha por aparelhos mais eficientes.'),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: 'Por que esse app existe?', style: TextStyle(fontSize: 20, fontWeight: .bold)),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: '● Para dar clareza: nem sempre é fácil saber quanto cada aparelho consome ou quanto isso pesa no bolso. Com a calculadora, a conta fica clara.'),
                      TextSpan(text: '\n'),
                      TextSpan(text: '● Para ajudar a economizar: com dados concretos, o usuário pode mudar hábitos, reduzir desperdício e economizar dinheiro.'),
                      TextSpan(text: '\n'),
                      TextSpan(text: '● Para promover consumo consciente: informação gera consciência; consciência gera mudança. Você ajuda o planeta e sua conta ao mesmo tempo.'),
                      TextSpan(text: '\n'),
                      TextSpan(text: '● Para educar: nem todo mundo entende o que significa “Watt”, “kWh” ou “tarifa de energia”. O app facilita isso — com simplicidade.'),
                    ],
                  ),
                ),
              ),

              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Fontes', style: TextStyle(fontSize: 20, fontWeight: .bold, color: Colors.black87)),
                      SizedBox(height: 20,),
                      LinkFonts(link: 'https://brasil.un.org/pt-br/sdgs/07', titulo: 'Sustainable Development Goal 07: Energia Limpa e acessível | As Nações  Unidas no Brasil'),
                      LinkFonts(link: 'https://www.ipea.gov.br/ods/ods7.html', titulo: 'ODS 7 - Energia acessível e Limpa - Ipea - Objetivos do Desenvolvimento Sustentável'),
                      LinkFonts(link: 'https://www.sgdes.pr.gov.br/Pagina/ODS-7-Energia-limpa-e-acessivel', titulo: 'ODS 7 - Energia limpa e acessível | Superintendência Geral de Desenvolvimento Sustentável'),
                      LinkFonts(link: 'https://www.ipea.gov.br/ods/ods7_card.html', titulo: 'ODS 7 - Assegurar o acesso  confiável, sustentável, moderno e a preço acessível à energia para todas e todos'),
                    ],
                  ),
                ),
              ),
              Text('Developed by Matheus Angelo Oliveira da Silva'),
            ],
          ),
        ],
      ),
    );
  }
}
