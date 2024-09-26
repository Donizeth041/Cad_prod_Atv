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

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // Índice da página selecionada

  // Lista de páginas
  final List<Widget> _pages = [
    PageContent(title: 'Perfil'),
    PageContent(title: 'Produtos'),
    PageContent(title: 'Carrinho'),
    PageContent(title: 'Ajuda'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Atualiza o índice da página
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Barra lateral fixa
          Container(
            width: 70, // Largura da barra lateral
            color: Colors.blueGrey, // Cor da barra lateral
            child: NavigationRail(
              selectedIndex: _selectedIndex,
              onDestinationSelected: _onItemTapped,
              labelType: NavigationRailLabelType.none, // Ocultar rótulos
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
          ),
          // Conteúdo principal
          Expanded(
            child: Container(
              color: Colors.lightBlueAccent, // Cor de fundo da tela principal
              child: _pages[_selectedIndex], // Mostra a página selecionada
            ),
          ),
        ],
      ),
    );
  }
}

class PageContent extends StatelessWidget {
  final String title;

  const PageContent({required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: TextStyle(fontSize: 24, color: Colors.white), // Texto branco
      ),
    );
  }
}
