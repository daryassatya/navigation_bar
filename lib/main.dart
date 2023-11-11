import 'package:flutter/material.dart';
import 'menu/pertama.dart';
import 'menu/kedua.dart';
import 'menu/ketiga.dart';

/// Flutter code sample for [TabBar].

/// Dimas Aryasatya - 21552011325 -TIFRM221MC

void main() => runApp(const TabBarApp());

class TabBarApp extends StatelessWidget {
  const TabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const TabBarExample(),
    );
  }
}

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Sample'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.account_circle),
              ),
              Tab(
                icon: Icon(Icons.add_box_outlined),
              ),
              Tab(
                icon: Icon(Icons.subject_outlined),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: const <Widget>[PertamaPage(), KeduaPage(), KeduaPage()],
        ),
      ),
    );
  }
}
