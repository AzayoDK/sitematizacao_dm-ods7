import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  // Lista de Menu
  final List<CatalogoItem> secoes;

  const Menu({super.key, required this.secoes});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      primary: false,
      crossAxisCount: 2,
      padding: EdgeInsets.all(16),
      crossAxisSpacing: 16,
      childAspectRatio: 1,
      children: secoes
          .map(
            (item) => GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => item.destino)),
              child: Card(
                elevation: 4,
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Icon(item.icone, size: 48, color: Colors.blue),
                      Text(
                        item.titulo,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        item.descricao,
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        overflow: TextOverflow.clip,
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}

class CatalogoItem {
  final String titulo;
  final IconData icone;
  final String descricao;
  final Widget destino;

  CatalogoItem({
    required this.titulo,
    required this.icone,
    required this.descricao,
    required this.destino,
  });
}
