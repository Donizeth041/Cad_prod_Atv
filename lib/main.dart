import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: 0, //
            onDestinationSelected: (int index) {},
            labelType: NavigationRailLabelType.none,
            destinations: [
              NavigationRailDestination(
                icon: Icon(Icons.person),
                label: Text('Perfil'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.shopping_basket),
                label: Text('Produtos'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.shopping_cart),
                label: Text('Carrinho'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.help),
                label: Text('Ajuda'),
              ),
            ],
          ),
          Expanded(
            child: Center(
              child: Text('Conteúdo Principal'),
            ),
          ),
        ],
      ),
    );
  }
}
