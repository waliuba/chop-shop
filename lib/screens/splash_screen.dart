import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:chop_shop/universal components/image_strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      
        
        children:[
           Lottie.asset(  
          XImages.splash,
          width: 220,
          height: 220,
          fit: BoxFit.contain,
        ),
       const SizedBox(height: 15),
     const Text(
      'Chop-Shop',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold
        ),
       ),
     ],
    ),
  ),

  );

  
}
}