import 'package:flutter/material.dart';
import 'package:chop_shop/utils/universal%20components/sizes.dart';
import 'package:chop_shop/utils/universal%20components/image_strings.dart';
import 'package:chop_shop/comon/styles/styles.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: XspacingStyle.paddingwithappbarH,
          child: Column(
            children: [
              // logo, tittle subtittle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Image(
                    height: XSizes.logoImage,
                    image: AssetImage(XImages.logoDark),
                    
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
