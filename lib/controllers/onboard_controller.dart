import 'package:carousel_slider/carousel_slider.dart';
import 'package:chop_shop/utils/universal%20components/image_strings.dart';
import 'package:get/get.dart';


class OnboardController extends GetxController {
  // observable for current index
  final RxInt currentPage = 0.obs;

  //carouselslider controler for carousel

  late final CarouselSliderController carouselController;

  // list of onboarding 
  final List<Map<String, dynamic >> onboardingData = [

    // intro screen
    {

    'type': 'animation',
    'source' : XImages.logo,
    'title': 'Welcome to Chop Shop',
    'description': 'Your one stop marketplace',

    },

    // Feature Introduction Screen

    {
      'type' : 'animation',
      'source': XImages.order,
      'title': 'Everything. One Place.',
      'description': 'Browse thousands of products from trusted sellers',

    },

    // Convenience / Value Screen

    {
      'type':'animation',
      'source': XImages.customerservice,
      'title': 'Round Clock Support',
      'description':'Get help whenever you need it. Our team is available 24/7'
    },

    // Community screen

    {
      'type': 'animation',
      'source':XImages.verification,
      'title': 'Verified Sellers',
      'description':'Shop confidently with trusted vendors and verified products.',
    },



  ];

  @override

  void onInit() {

    super.onInit();

    carouselController = CarouselSliderController();
  }

  @override

  void onClose(){
    // carouselControler dose not need dispose

    super.onClose();
  }

  // Method to go next to page

  // @override
  void nextpage() {

    if (currentPage.value < onboardingData.length - 1) {

      currentPage.value++;

      carouselController.jumpToPage(currentPage.value);

    }
    else
    {
      // navigate to home screen
      Get.offNamed('/');
    }
  }
     
  void onPageChange(int index, CarouselPageChangedReason reason){

    currentPage.value = index;
  }

}
