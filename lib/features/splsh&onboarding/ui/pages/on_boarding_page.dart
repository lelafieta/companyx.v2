import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../config/router/routes.dart';
import '../../../../config/themes/color_palette.dart';
import '../../../../core/resources/app_svg.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  final List<Map<String, dynamic>> _onboardingData = [
    {
      'title': 'Inteligente & Rápido',
      'description': 'Checkin & Checkout instantânio com apenas um click fácil',
      'image': AppSvg.businessSupportRafiki,
      'color': Colors.white,
    },
    {
      'title': 'Gestão de projectos',
      'description': 'lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      'image': AppSvg.businessAnalyticsRafiki,
      'color': Colors.white,
    },
    {
      'title': 'Verificação de presenças & Gestão de mudanças',
      'description': 'Vamos começar a usar o aplicativo.',
      'image': AppSvg.togetherPana,
      'color': Colors.white,
    },
  ];

  Future<void> _completeOnboarding() async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // await prefs.setBool('onboardingComplete', true);
    // // Navigator.pushReplacementNamed(context, '/home');

    setState(() {
      _currentPage = 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        children: [
          Column(
            children: <Widget>[
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  itemCount: _onboardingData.length,
                  itemBuilder: (context, index) => OnboardingContent(
                    title: _onboardingData[index]['title']!,
                    description: _onboardingData[index]['description']!,
                    image: _onboardingData[index]['image']!,
                    color: _onboardingData[index]['color']!,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: _buildBottomSection(),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomSection() {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              style: const ButtonStyle(
                  // backgroundColor: MaterialStatePropertyAll(
                  //   AppColors.grey,
                  // ),
                  ),
              onPressed: () {
                _pageController.jumpToPage(2);
                _completeOnboarding();
              },
              child: Text(
                "Pular",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: List.generate(
                _onboardingData.length,
                (index) => _buildDot(index),
              ),
            ),
            TextButton(
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  AppColors.primary,
                ),
                foregroundColor: WidgetStatePropertyAll(
                  AppColors.primary,
                ),
              ),
              onPressed: () {
                if (_currentPage == 2) {
                  Get.toNamed(Routes.getStartedRoute);
                } else if (_currentPage == _onboardingData.length - 1) {
                  _completeOnboarding();
                } else {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                }
              },
              child: Text(
                _currentPage == _onboardingData.length - 1
                    ? "Começar"
                    : "Próximo",
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDot(int index) {
    return Container(
      margin: const EdgeInsets.only(right: 8.0),
      height: 10,
      width: _currentPage == index ? 20 : 10,
      decoration: BoxDecoration(
        color: _currentPage == index
            ? Theme.of(context).colorScheme.onSurface
            : Colors.grey.withOpacity(.5),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

class OnboardingContent extends StatelessWidget {
  final String title, description, image;
  final Color color;

  const OnboardingContent({
    super.key,
    required this.title,
    required this.description,
    required this.image,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(image),
            const SizedBox(height: 30),
            Text(
              title,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
