import 'package:flutter/material.dart';

class DicasDeEficienciaEnergetica extends StatelessWidget {
  const DicasDeEficienciaEnergetica({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dicas de Economia', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  'assets/images/icone-lampada-economica.png',
                  width: 200,
                ),
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
                      TextSpan(text: 'Economizar energia vai muito além de pagar menos na conta — é também uma forma de cuidar do planeta e usar os recursos de maneira mais consciente. Pequenas mudanças no dia a dia já fazem uma diferença enorme no final do mês. Aqui vão algumas dicas simples e práticas pra você aplicar agora mesmo:'),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: '1. Troque lâmpadas comuns por LED', style: TextStyle(fontSize: 20, fontWeight: .bold)),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: 'Lâmpadas LED gastam até 80% menos energia e duram muito mais.\nExemplo: uma lâmpada fluorescente de 15W pode ser substituída por uma LED de 8W com a mesma iluminação.'),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: '2. Desligue aparelhos da tomada quando não estiver usando', style: TextStyle(fontSize: 20, fontWeight: .bold)),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: 'Aquele "standby" da TV, videogame, micro-ondas e até do carregador de celular continua consumindo energia. É pouco, mas somado o mês inteiro vira um gasto real.'),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: '3. Evite deixar o celular carregando a noite inteira', style: TextStyle(fontSize: 20, fontWeight: .bold)),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: 'Além de gastar energia desnecessária, diminui a vida útil da bateria. Carregue até 100% e retire da tomada.'),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: '4. Use o ar-condicionado de forma esperta', style: TextStyle(fontSize: 20, fontWeight: .bold)),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: '  ● Mantenha portas e janelas fechadas.'),
                      TextSpan(text: '\n'),
                      TextSpan(text: '  ● Coloque a temperatura entre 23°C e 25°C.'),
                      TextSpan(text: '\n'),
                      TextSpan(text: '  ● Limpe os filtros pelo menos 1x por mês.'),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: '5. Otimize o uso da geladeira', style: TextStyle(fontSize: 20, fontWeight: .bold)),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: '  ● Não coloque alimentos quentes direto lá dentro.'),
                      TextSpan(text: '\n'),
                      TextSpan(text: '  ● Evite abrir a porta toda hora.'),
                      TextSpan(text: '\n'),
                      TextSpan(text: '  ● Ajuste o termostato para a intensidade certa.'),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: '6. Tome banhos mais curtos', style: TextStyle(fontSize: 20, fontWeight: .bold)),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: 'Se você usa chuveiro elétrico, cada minuto a mais faz diferença. Passar de 15 para 10 minutos pode economizar quase 30% no consumo do chuveiro.'),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: '7. Use a função “modo econômico” dos aparelhos', style: TextStyle(fontSize: 20, fontWeight: .bold)),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: 'Muita gente nem percebe que a máquina de lavar, ar-condicionado e até alguns computadores têm essa função. Ela reduz o consumo sem afetar muito o desempenho.'),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: '8. Aproveite a luz natural', style: TextStyle(fontSize: 20, fontWeight: .bold)),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: 'Abra janelas, cortinas e use espelhos a seu favor. Iluminação natural é grátis e deixa o ambiente bem mais agradável.'),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: '9. Junte roupas antes de lavar', style: TextStyle(fontSize: 20, fontWeight: .bold)),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: 'A máquina gasta praticamente o mesmo tanto em meia carga ou cheia. Espere acumular roupas para usar de forma eficiente.'),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: '10. Prefira aparelhos com selo Procel A', style: TextStyle(fontSize: 20, fontWeight: .bold)),
                      TextSpan(text: '\n\n'),
                      TextSpan(text: 'Na hora de comprar um eletrodoméstico, procure os mais eficientes. Pode ser um pouco mais caro na hora, mas a economia ao longo dos anos compensa demais.'),

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
