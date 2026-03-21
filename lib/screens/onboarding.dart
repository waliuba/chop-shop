// ignore_for_file: file_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chop_shop/controllers/onboard_controller.dart';
import 'package:lottie/lottie.dart';
// import 'package:chop_shop/custome themes/text_theme.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingscreenState();
}

class _OnboardingscreenState extends State<Onboarding> {
  final OnboardController controller = Get.put(OnboardController());

  @override
  Widget build(BuildContext context) {
    final int totalPages = controller.onboardingData.length;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            CarouselSlider.builder(
              itemCount: controller.onboardingData.length,
              itemBuilder: (context, index, realIndex) {
                final data = controller.onboardingData[index];
                final String? type = data['type'] as String?;
                final String? source = data['source'] as String?;
                final String title = (data['title'] as String?) ?? '';
                final String description =
                    (data['description'] as String?) ?? '';

                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (type == 'animation' && source != null)
                      Lottie.asset(
                        source,
                        key: ValueKey<String>(source),
                        height: 200,
                        animate: true,
                        repeat: true,
                        errorBuilder: (context, error, stackTrace) => Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.error,
                              size: 50,
                              color: Colors.red,
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              'Failed to load Animation',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      )
                    else
                      const SizedBox.shrink(),

                    const SizedBox(height: 35),
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 15),
                    Text(
                      description,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                );
              },

              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.8,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                scrollPhysics: const BouncingScrollPhysics(),
                autoPlay: false,
                onPageChanged: (index, reason) {
                  controller.onPageChange(index, reason);
                },
              ),
              carouselController: controller.carouselController,
            ),

            // Skip button - far bottom left
            Positioned(
              left: 16,
              bottom: 0,
              child: Obx(() {
                final bool isLastPage =
                    controller.currentPage.value >= totalPages - 1;
                return AnimatedOpacity(
                  opacity: isLastPage ? 0.0 : 1.0,
                  duration: const Duration(milliseconds: 200),
                  child: IgnorePointer(
                    ignoring: isLastPage,
                    child: TextButton(
                      onPressed: () {
                        controller.carouselController.jumpToPage(
                          totalPages - 1,
                        );
                      },
                      child: const Text('Skip'),
                    ),
                  ),
                );
              }),
            ),

            // Centered next button 
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Center(
                child: Obx(() {
                  final int page = totalPages == 0
                      ? 0
                      : controller.currentPage.value
                            .clamp(0, totalPages - 1)
                            .toInt();
                  final bool isLastPage = page >= totalPages - 1;
                  final double progress = totalPages == 0
                      ? 0.0
                      : (page + 1) / totalPages;

                  return SizedBox(
                    width: 80,
                    height: 76,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        TweenAnimationBuilder<double>(
                          tween: Tween<double>(begin: 0, end: progress),
                          duration: const Duration(milliseconds: 250),
                          curve: Curves.easeOut,
                          builder: (context, value, _) {
                            return CircularProgressIndicator(
                              value: value,
                              strokeWidth: 30,
                              backgroundColor: const Color.fromARGB(
                                255,
                                19,
                                19,
                                19,
                              ),
                              
                            );
                          },
                        ),
                        Material(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          shape: const CircleBorder(),
                          child: InkWell(
                            customBorder: const CircleBorder(),
                            onTap: controller.nextpage,
                            child: SizedBox(
                              width: 55,
                              height: 55,
                              child: Icon(
                                isLastPage ? Icons.check : Icons.arrow_forward,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
