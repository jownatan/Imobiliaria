import 'package:MoneySaving/App/Misc/hexcolor.dart';
import 'package:flutter/material.dart';

class HousesWD extends StatefulWidget {
  const HousesWD({super.key});

  @override
  State<HousesWD> createState() => _HousesWDState();
}

class _HousesWDState extends State<HousesWD> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://i.pinimg.com/564x/d7/ea/5f/d7ea5f871897d40b530149dd7f4eef6f.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
