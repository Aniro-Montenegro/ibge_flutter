import 'package:flutter/material.dart';

class ColorsPattern {
  final Color appBarColor = const Color(0xFF024959);
  final Color cardColor = const Color(0xFF639CBF);
  final Color titleGreen = const Color(0xFF5A7302);
  final Color colorback = const Color(0xFFF2D5A0);
  final Color colorOrangeBack = const Color(0xFFF27D52);

  final MaterialStateProperty<Color> appBarColorMaterial = MaterialStateProperty.all(const Color(0xFF024959));
  final MaterialStateProperty<Color> cardColorMaterial = MaterialStateProperty.all(const Color(0xFF639CBF));
  final MaterialStateProperty<Color> titleGreenMaterial = MaterialStateProperty.all(const Color(0xFF5A7302));
  final MaterialStateProperty<Color> colorbackMaterial = MaterialStateProperty.all(const Color(0xFFF2D5A0));
  final MaterialStateProperty<Color> colorOrangeBackMaterial = MaterialStateProperty.all(const Color(0xFFF27D52));
}
