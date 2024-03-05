import 'package:flutter/material.dart';
import 'package:pertemuan1/menu/nav_bottom.dart';
import 'package:pertemuan1/menu/nav_drawer.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobile 4"),
      ),
      drawer: const Nav_Drawer(),
      body: const MyHomePage(),
    );
  }
}
