import 'dart:ui';
import 'package:MoneySaving/App/Pages/MainPages/Page.dart';
import 'package:flutter/material.dart';
import 'MainPage.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    MainPage(),
    Pagetest(),
    MainPage(),
  ];

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: _pageController,
              itemCount: _pages.length,
              itemBuilder: (context, index) {
                return _pages[index];
              },
              onPageChanged: _onPageChanged,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                height: 50,
                width: 150,
                child: ClipRRect(
                  // Apply ClipRRect here
                  borderRadius: BorderRadius.circular(15),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Icon(
                            _currentIndex == 0
                                ? Icons.circle_rounded
                                : Icons.circle_outlined,
                            size: 15,
                          ),
                          onPressed: () {
                            _pageController.jumpToPage(0);
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            _currentIndex == 1
                                ? Icons.circle_rounded
                                : Icons.circle_outlined,
                            size: 15,
                          ),
                          onPressed: () {
                            _pageController.jumpToPage(1);
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            _currentIndex == 2
                                ? Icons.circle_rounded
                                : Icons.circle_outlined,
                            size: 15,
                          ),
                          onPressed: () {
                            _pageController.jumpToPage(2);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
