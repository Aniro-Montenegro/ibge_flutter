import 'package:flutter/material.dart';

import 'package:ibge/config/colors.dart';
import 'package:ibge/ui/cnae_page.dart';
import 'package:ibge/ui/divisoes_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IBGE'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: GestureDetector(
              child: Container(
                height: 100,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorsPattern().appBarColor,
                ),
                child: const Center(
                  child: Text(
                    'CNAE',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => const CnaePage(),
                    transitionDuration: const Duration(seconds: 2),
                    transitionsBuilder: (_, animation, __, child) => FadeTransition(
                      opacity: animation,
                      child: child,
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: GestureDetector(
              child: Container(
                height: 100,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorsPattern().appBarColor,
                ),
                child: const Center(
                  child: Text(
                    'Divisões',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => const DivisoesPage(),
                    transitionDuration: const Duration(seconds: 2),
                    transitionsBuilder: (_, animation, __, child) => FadeTransition(
                      opacity: animation,
                      child: child,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}
