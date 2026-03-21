import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'utils/theme/theme.dart';
import 'screens/splash_screen.dart';
import 'screens/onboarding.dart';
import 'screens/register.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: XApptheme.lightTheme,
      darkTheme: XApptheme.darkTheme,
      
      // App starts here
      initialRoute: '/splash_screen',
      // Rest of Routes
      getPages: [
        GetPage(name: '/splash_screen', page: () => const SplashScreen()),
        GetPage(name: '/onboarding', page: () => const Onboarding()),
        GetPage(name: '/register', page: () => const Register()),
      ],
    );
  }

  
}
