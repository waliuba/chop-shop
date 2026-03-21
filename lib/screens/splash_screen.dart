import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:chop_shop/utils/universal%20components/image_strings.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // navigate to onboarding after 3secs

    Future.delayed(const Duration(seconds: 5), () {
      Get.offNamed('/onboarding');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              XImages.splash,
              width: 220,
              height: 220,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 10),
            Text('Chop Shop', style: Theme.of(context).textTheme.headlineLarge),
          ],
        ),
      ),
    );
  }
}
