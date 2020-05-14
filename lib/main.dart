import 'package:aprenda_ingles/bichos.dart';
import 'package:aprenda_ingles/numeros.dart';
import 'package:aprenda_ingles/vogais.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
    theme: ThemeData(
      primaryColor: Colors.brown,
      accentColor: Colors.white,
      scaffoldBackgroundColor: Colors.yellow,
    ),
  ));
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aprendendo inglês'),
        bottom: TabBar(
          labelStyle: TextStyle(
            fontSize: 20,
          ),
          indicatorWeight: 5,
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              text: 'Bichos',
            ),
            Tab(
              text: 'Números',
            ),
            Tab(
              text: 'Vogais',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Bichos(),
          Numeros(),
          Vogais(),
        ],
      ),
    );
  }
}
