import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:crypto_app/routes/app_routes.dart';

import 'package:crypto_app/utils/color_lib.dart';

// OnBoarding content Model
class OnBoard {
  final String image, title, description;

  OnBoard({
    required this.image,
    required this.title,
    required this.description,
  });
}

// OnBoarding content list
final List<OnBoard> demoData = [
  OnBoard(
    image: "assets/img/Group 8785.png",
    title: "Take hold of your finances",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut eget mauris massa pharetra.",
  ),
  OnBoard(
    image: "assets/img/Group 8786.png",
    title: "Smart trading tools",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut eget mauris massa pharetra.",
  ),
  OnBoard(
    image: "assets/img/Group 8787.png",
    title: "Invest in the future",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut eget mauris massa pharetra.",
  ),
];

// OnBoardingScreen
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  // Variables
  late PageController _pageController;
  int _pageIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    // Initialize page controller
    _pageController = PageController(initialPage: 0);
    // Automatic scroll behaviour
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_pageIndex < 3) {
        _pageIndex++;
      } else {
        _pageIndex = 0;
      }

      _pageController.animateToPage(
        _pageIndex,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    // Dispose everything
    _pageController.dispose();
    _timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/img/Coinmoney.png"),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "Coinmoney",
                  style: TextStyle(
                    fontSize: 20,
                    color: ColorLib.kPrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            // Carousel area
            Expanded(
              child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    _pageIndex = index;
                  });
                },
                itemCount: demoData.length,
                controller: _pageController,
                itemBuilder: (context, index) => OnBoardContent(
                    image: demoData[index].image,
                    title: demoData[index].title,
                    description: demoData[index].description),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    demoData.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: DotIndicator(
                        isActive: index == _pageIndex,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Privacy policy area
            const Text("By proceeding you agree to our Privacy Policy"),
            // White space
            const SizedBox(
              height: 16,
            ),
            // Button area
            InkWell(
              onTap: () {
                print("Button clicked!");
              },
              child: GestureDetector(
                onTap: () {
                  GoRouter.of(context).pushReplacementNamed(AppRoutes.signup);
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 48),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ColorLib.kPrimary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        fontFamily: "HappyMonkey",
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// OnBoarding area widget
class OnBoardContent extends StatelessWidget {
  OnBoardContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  String image;
  String title;
  String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(image),
        const Spacer(),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: ColorLib.ktextBlack,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: ColorLib.ktextBlack,
            fontSize: 16,
          ),
        ),
        Spacer()
      ],
    );
  }
}

// Dot indicator widget
class DotIndicator extends StatelessWidget {
  const DotIndicator({
    this.isActive = false,
    super.key,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 8,
      width: isActive ? 24 : 8,
      decoration: BoxDecoration(
        color: isActive ? ColorLib.kPrimary : Colors.white,
        border: isActive ? null : Border.all(color: ColorLib.kPrimary),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}
