import 'package:flutter/material.dart';
import 'package:ibge/config/colors.dart';
import 'package:ibge/ui/home_page.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(color: Colors.white),
      child: Container(
        color: ColorsPattern().appBarColor,
        child: Center(
          child: GestureDetector(
            child: const Text(
              'IBGE',
              style: TextStyle(color: Colors.white, fontSize: 50),
            ),
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => const HomePage(),
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
      ),
    );
  }
}
