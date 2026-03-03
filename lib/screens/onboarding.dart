import 'package:flutter/material.dart';
// import 'package:chop_shop/custome themes/text_theme.dart';



class Onboarding extends StatefulWidget{
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _Onboarding();
   
    
}
class _Onboarding extends State<Onboarding> {

  @override

  Widget build(BuildContext context){

    return Scaffold(
      body: Center(
        child: Text(
          "Welcome to Chop Shop",
          style: Theme.of(context).textTheme.headlineMedium,
        ),

      ),
    );
  }


}