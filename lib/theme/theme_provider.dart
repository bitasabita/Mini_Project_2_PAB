import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {

  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  ThemeMode get themeMode =>
      _isDarkMode ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }

  // ================= LIGHT THEME =================

  ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        primaryColor: const Color(0xFF2EC4B6),

        scaffoldBackgroundColor: const Color(0xFFF5F7FB),

        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF2EC4B6),
          foregroundColor: Colors.white,
          elevation: 0,
        ),

        cardColor: Colors.white,

        colorScheme: const ColorScheme.light(
          primary: Color(0xFF2EC4B6),
          secondary: Color(0xFFFFBF69),
        ),

        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xFFFFBF69),
        ),

        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF1A1A1A),
          ),
          bodyMedium: TextStyle(
            color: Color(0xFF4A4A4A),
          ),
        ),
      );

  // ================= DARK THEME =================

  ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,

        primaryColor: const Color(0xFF2EC4B6),

        scaffoldBackgroundColor: const Color(0xFF0F172A),

        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E293B),
          foregroundColor: Colors.white,
          elevation: 0,
        ),

        cardColor: const Color(0xFF1E293B),

        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF2EC4B6),
          secondary: Color(0xFFFFBF69),
        ),

        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xFFFFBF69),
        ),

        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: TextStyle(
            color: Color(0xFFCBD5F5),
          ),
        ),
      );
}