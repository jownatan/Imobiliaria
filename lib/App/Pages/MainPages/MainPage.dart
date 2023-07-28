import 'package:MoneySaving/App/Misc/hexcolor.dart';
import 'package:flutter/material.dart';

import '../../Widgets/HousesW.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Widget> _pages = [
    HousesWD(),
    HousesWD(),
    HousesWD(),
  ];
  final PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          child: PageView.builder(
            scrollDirection: Axis.vertical,
            controller: _pageController,
            itemCount: _pages.length,
            itemBuilder: (context, index) {
              return _pages[index];
            },
          ),
        ),
        //////////////////
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.light_rounded,
              color: Colors.white,
              size: 50,
            ),
            Text(
              "Casa grande",
              style: TextStyle(
                fontFamily: 'code',
                fontSize: 35,
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              "Suzano, SP",
              style: TextStyle(
                fontFamily: 'code',
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        "Ver mobilia",
                        style: TextStyle(
                          fontFamily: 'code',
                          fontSize: 20,
                          color: HexColor("#2A3645"),
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          "Visita",
                          style: TextStyle(
                            fontFamily: 'code',
                            fontSize: 20,
                            color: HexColor("#2A3645"),
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 150,
            )
          ],
        ),
      ],
    ));
  }
}
