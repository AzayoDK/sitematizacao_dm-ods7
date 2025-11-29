import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CalculadoraDeConsumo extends StatefulWidget {
  const CalculadoraDeConsumo({super.key});

  @override
  State<CalculadoraDeConsumo> createState() => _CalculadoraDeConsumoState();
}

class _CalculadoraDeConsumoState extends State<CalculadoraDeConsumo> {
  final TextEditingController _watts = TextEditingController();
  final TextEditingController _tempo = TextEditingController();
  final TextEditingController _tarifa = TextEditingController();
  final List<Map<String, String>> _listaTempo = [
    {"value": "Horas", "label": "Horas"},
    {"value": "Minutos", "label": "Minutos"},
  ];

  double _resultado = 0.0;
  double _resultadoKhw = 0.0;
  String _tempoSelecionado = 'Horas';

  // Função para fazer o calculo
  void _calcularConsumo() {
    final double? watts = double.tryParse(_watts.text.replaceAll(',', '.'));
    final double? tempo = double.tryParse(_tempo.text.replaceAll(',', '.'));
    final double? tarifa = double.tryParse(_tarifa.text.replaceAll(',', '.'));

    if (watts == null || tempo == null || tarifa == null) {
      return;
    }
    double tempoConversao;

    switch (_tempoSelecionado) {
      case 'Horas':
        tempoConversao = tempo;
        break;
      case 'Minutos':
        tempoConversao = tempo / 60;
        break;
      default:
        tempoConversao = 0;
    }
    final double kwh = (watts * tempoConversao) / 1000;
    final double valorKwh = kwh * tarifa;

    setState(() {
      _resultado = valorKwh;
      _resultadoKhw = kwh;
    });
  }

  // encerramento do ciclo de vida dos TextEditingController
  @override
  void dispose() {
    _watts.dispose();
    _tempo.dispose();
    _tarifa.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculadora de Consumo',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: SizedBox(
                  width: 180,
                  child: Image.asset('assets/images/icone-raio.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: _watts,
                      keyboardType: TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      decoration: const InputDecoration(
                        labelText: 'Watts',
                        border: OutlineInputBorder(),
                        hintText: 'Potência do aparelho Watts',
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: _tempo,
                            keyboardType: TextInputType.numberWithOptions(
                              decimal: true,
                            ),
                            decoration: InputDecoration(
                              labelText: 'Tempo de Uso',
                              border: const OutlineInputBorder(),
                              hintText: _tempoSelecionado == 'Horas'
                                  ? 'Uso em horas'
                                  : 'Uso  em minutos',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                          child: DropdownMenu(
                            initialSelection: _tempoSelecionado,
                            onSelected: (String? valor) {
                              setState(() {
                                _tempoSelecionado = valor!;
                              });
                            },
                            dropdownMenuEntries: _listaTempo.map((item) {
                              return DropdownMenuEntry<String>(
                                value: item["value"]!,
                                label: item["label"]!,
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _tarifa,
                      keyboardType: TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      decoration: const InputDecoration(
                        labelText: 'Tarifa',
                        border: OutlineInputBorder(),
                        hintText: 'Valor da tarifa (R\$/kWh)',
                      ),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: _calcularConsumo,
                      child: Text('Calcular'),
                    ),
                    Text(
                      'Consumo ${NumberFormat("###,##0.0000", "pt_BR").format(_resultadoKhw)} kWh',
                    ),
                    Text(
                      'Custo estimado ${NumberFormat.currency(locale: "pt_BR", symbol: "R\$").format(_resultado)}',
                    ),
                    SizedBox(height: 30),
                    Divider(),

                    // Texto sobre a calculadora de consumo
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Entenda Mais',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        RichText(
                          textAlign: TextAlign.justify,
                          text: const TextSpan(style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                            height: 1.5,
                          ),
                          children: <TextSpan>[
                            TextSpan(text: 'Calcular o consumo de energia é essencial para saber quais aparelhos mais pesam na sua conta de luz e como pequenas mudanças no dia a dia podem gerar uma economia real no final do mês. Quando você conhece o gasto de cada equipamento, fica muito mais fácil identificar desperdícios, evitar surpresas na fatura e até planejar a troca por modelos mais eficientes.'),
                            TextSpan(text: '\n\n'),
                            TextSpan(text: 'E para isso precisamos entender o que são Watts, o tempo de uso e como encontrar a Tarifa.'),
                            TextSpan(text: '\n\n'),
                            TextSpan(text: 'O que é “Watts (W)”?', style: TextStyle(fontSize: 20, fontWeight: .bold)),
                            TextSpan(text: '\n\n'),
                            TextSpan(text: 'Watts é a potência do aparelho, ou seja, quanto de energia ele consome enquanto está ligado.'),
                            TextSpan(text: '\n'),
                            TextSpan(text: 'Você encontra esse valor na etiqueta do produto, manual ou etiqueta do INMETRO.'),
                            TextSpan(text: '\n'),
                            TextSpan(text: 'Exemplos:'),
                            TextSpan(text: '\n'),
                            TextSpan(text: '  ● Secador → 1200W'),
                            TextSpan(text: '\n'),
                            TextSpan(text: '  ● Chuveiro → 5500W'),
                            TextSpan(text: '\n'),
                            TextSpan(text: '  ● Geladeira → 150W'),
                            TextSpan(text: '\n\n'),
                            TextSpan(text: 'Se o valor vier em kW, basta multiplicar por 1000 para converter para Watts.'),
                            TextSpan(text: '\n'),
                            TextSpan(text: 'Ex: 1,4 kW = 1400 W.'),
                            TextSpan(text: '\n\n'),
                            TextSpan(text: 'O que é “Tempo de Uso”?', style: TextStyle(fontSize: 20, fontWeight: .bold)),
                            TextSpan(text: '\n\n'),
                            TextSpan(text: 'É quanto tempo o aparelho fica ligado por dia.'),
                            TextSpan(text: '\n'),
                            TextSpan(text: 'Você pode usar:'),
                            TextSpan(text: '\n'),
                            TextSpan(text: '  ● Horas → 1h, 2h, 3h…'),
                            TextSpan(text: '\n'),
                            TextSpan(text: '  ● Minutos → 10min, 30min, 45min…'),
                            TextSpan(text: '\n\n'),
                            TextSpan(text: 'Exemplos:'),
                            TextSpan(text: '\n'),
                            TextSpan(text: '  ● TV ligada por 3h → coloque 3 horas'),
                            TextSpan(text: '\n'),
                            TextSpan(text: '  ● Chuveiro usado por 15min → coloque 15 minutos'),
                            TextSpan(text: '\n\n'),
                            TextSpan(text: 'Como encontrar a Tarifa (R\$/kWh) na fatura', style: TextStyle(fontSize: 20, fontWeight: .bold)),
                            TextSpan(text: '\n\n'),
                            TextSpan(text: 'Na sua conta de luz, procure pela linha chamada:'),
                            TextSpan(text: '\n'),
                            TextSpan(text: '  ● “Tarifa de Energia”'),
                            TextSpan(text: '\n'),
                            TextSpan(text: '  ● “TE – Tarifa de Energia”'),
                            TextSpan(text: '\n'),
                            TextSpan(text: '  ● “TUSD + TE”'),
                            TextSpan(text: '\n'),
                            TextSpan(text: '  ● “Valor por kWh”'),
                            TextSpan(text: '\n\n'),
                            TextSpan(text: 'Normalmente aparece algo como:'),
                            TextSpan(text: '\n'),
                            TextSpan(text: 'R\$ 0,85 / kWh \nR\$ 0,72 / kWh \nR\$ 1,10 / kWh'),
                            TextSpan(text: '\n\n'),
                            TextSpan(text: 'É esse número que você deve colocar no campo Tarifa.'),
                            TextSpan(text: '\n\n'),
                            TextSpan(text: 'Não achou a tarifa? Estime assim:', style: TextStyle(fontSize: 20, fontWeight: .bold)),
                            TextSpan(text: '\n\n'),
                            TextSpan(text: 'Se o usuário não encontrar a informação na fatura, ele pode fazer um cálculo aproximado:'),
                            TextSpan(text: '\n'),
                            TextSpan(text: '1. Pegue o valor total da conta (sem multas).'),
                            TextSpan(text: '\n'),
                            TextSpan(text: '2. Pegue o consumo total em kWh no mês (vem na fatura).'),
                            TextSpan(text: '\n'),
                            TextSpan(text: '3. Divida: Tarifa aproximada = Valor total da conta / Consumo total em kWh'),
                            TextSpan(text: '\n\n'),
                            TextSpan(text: 'Exemplo:'),
                            TextSpan(text: '\n'),
                            TextSpan(text: 'Conta R\$ 150,00'),
                            TextSpan(text: '\n'),
                            TextSpan(text: 'Consumo: 180 kWh'),
                            TextSpan(text: '\n\n'),
                            TextSpan(text: '150 / 180 = 0,83'),
                            TextSpan(text: '\n\n'),
                            TextSpan(text: 'Tarifa aproximada → R\$ 0,83/kWh'),
                            TextSpan(text: '\n'),
                            TextSpan(text: 'Isso funciona muito bem como estimativa.'),
                          ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
