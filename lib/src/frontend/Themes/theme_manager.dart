import 'package:flutter/material.dart';

class ThemeManager extends ChangeNotifier {
  late ThemeData _lightTheme;
  late ThemeData _darkTheme;
  late ThemeMode _themeMode;

  ThemeData get lightTheme => _lightTheme;
  ThemeData get darkTheme => _darkTheme;
  ThemeMode get themeMode => _themeMode;

  ThemeManager() {
    _lightTheme = ThemeData(
      // Définir les propriétés du thème clair
    );

    _darkTheme = ThemeData.dark().copyWith(
      // Personnaliser les propriétés du thème sombre
    );

    _themeMode = ThemeMode.light;
  }

  void toggleTheme() {
    _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
