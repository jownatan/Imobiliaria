import 'package:flutter/material.dart';
import '../../Misc/hexcolor.dart';
import '../../Widgets/HousesSearchW.dart';

class Pagetest extends StatefulWidget {
  const Pagetest({Key? key}) : super(key: key);

  @override
  State<Pagetest> createState() => _PagetestState();
}

class _PagetestState extends State<Pagetest> {
  late TabController _tabController;
  late TextEditingController _searchController;
  final List<Widget> _pages = [
    HousesSearchWD(),
    HousesSearchWD(),
    HousesSearchWD(),
    HousesSearchWD(),
    HousesSearchWD(),
    HousesSearchWD(),
    HousesSearchWD(),
  ];

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 13, bottom: 3, top: 10, right: 13),
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pilar",
                    style: TextStyle(
                      fontFamily: 'code',
                      fontSize: 50,
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    "Seja qual for sua escolha, te apoiamos.",
                    style: TextStyle(
                      fontFamily: 'code',
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Search
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black,
              ),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  labelText: 'Search',
                  prefixIcon: Icon(Icons.search, color: Colors.white),
                  labelStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding:
                      EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                  hintText: (""),
                ),
              ),
            ),
          ),

          // Location
          Padding(
            padding: const EdgeInsets.all(13),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sao Paulo",
                  style: TextStyle(
                    fontFamily: 'code',
                    fontSize: 15,
                    color: HexColor("#2A3645"),
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ],
            ),
          ),

          // ListView using ListView.builder
          Expanded(
            child: ListView.builder(
              itemCount: _pages.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height:
                        200, // Set the height for each HousesSearchWD widget
                    child: _pages[index],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
