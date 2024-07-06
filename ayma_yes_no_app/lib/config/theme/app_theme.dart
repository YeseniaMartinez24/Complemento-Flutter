import 'package:flutter/material.dart';

class AppTheme {
  final int selectedColor;

  // Constructor with assertion for validation
  AppTheme({this.selectedColor = 0})
      : assert(
          selectedColor >= 0 && selectedColor < _colorThemes.length,
          'El color se debe encontrar entre 0 y ${_colorThemes.length - 1}',
        );

  // agregar 0xFF mas el color hexadecimal
  static const Color _customColor = Color(0xFF6F00B0);

  // el guion bajo es para hacerlo privado
  static const List<Color> _colorThemes = [
    _customColor,
    Colors.blue,
    Colors.teal,
    Colors.green,
    Colors.yellow,
    Colors.orange,
  ];

  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}
