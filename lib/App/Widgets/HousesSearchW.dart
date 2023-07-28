import 'package:MoneySaving/App/Misc/hexcolor.dart';
import 'package:flutter/material.dart';

class HousesSearchWD extends StatefulWidget {
  const HousesSearchWD({super.key});

  @override
  State<HousesSearchWD> createState() => _HousesSearchWDState();
}

class _HousesSearchWDState extends State<HousesSearchWD> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 200,
        width: 500,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://i.pinimg.com/564x/d7/ea/5f/d7ea5f871897d40b530149dd7f4eef6f.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 200,
              width: 170,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 3.0, left: 40.0, right: 3.0, bottom: 3.0),
                    child: Text(
                      "RS500.000",
                      style: TextStyle(
                        fontFamily: 'code',
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 3.0, left: 40.0, right: 3.0, bottom: 3.0),
                    child: Text(
                      "Suzano, SP",
                      style: TextStyle(
                        fontFamily: 'code',
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
