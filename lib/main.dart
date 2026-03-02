import 'package:flutter/material.dart';
import 'custome themes/theme.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: XApptheme.lightTheme,
      darkTheme: XApptheme.darkTheme,
      home: const SplashScreen(),
    );
  }

  
}
