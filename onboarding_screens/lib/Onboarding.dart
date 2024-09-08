import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();

  List<Map<String, String>> onboardingData = [
    {
      "title": "Choose your product",
      "description": "Welcome to a World of Limitless Choices Your Perfect "
      "Product Awaits!",
      "image": "assets/1.gif"
    },
    {
      "title": "Select Payment Method",
      "description": "For Seamless Transactions, Choose Your Payment Path "
      "Your Convenience. Our Priority!",
      "image": "assets/2.gif"
    },
    {
      "title": "Deliver at your door step",
      "description": "From Our Doorstep to Yours Swift, Secure, and Contactless "
      "Delivery!",
      "image": "assets/3.gif"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(onPressed: (){
            _pageController.jumpToPage(2);

          }, child: const Text("Skip")),
        ],
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: onboardingData.length,
        itemBuilder: (context, index) => OnboardingContent(
          title: onboardingData[index]['title']!,
          description: onboardingData[index]['description']!,
          image: onboardingData[index]['image']!,
        ),
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SmoothPageIndicator(
            controller: _pageController, // PageController
            count: onboardingData.length,
            effect: const ExpandingDotsEffect(
              dotHeight: 8,
              dotWidth: 8,
              activeDotColor: Colors.red,
              dotColor: Colors.grey,
            ),
          ),
          const SizedBox(height: 20),
          IconButton(
            onPressed: () {
              _pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease,
              );
            },
            icon: const Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}

class OnboardingContent extends StatelessWidget {
  final String title, description, image;

  const OnboardingContent({
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image,
          height: 300,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Text(
          description,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
