import 'package:flutter/material.dart';
import 'package:musika/src/constant/extensions/barrel_extensions.dart';
import 'package:musika/src/constant/managers/asset_manager.dart';

import '../../../constant/managers/color_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String categoryName = 'Yoga';

  List<String> categoriesList = [
    'Yoga',
    'Fitness',
    'Education',
    'Design',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            ColorManager.linear1,
            ColorManager.linear2,
            ColorManager.linear3
          ], end: Alignment.topRight),
        ),
        child: Column(
          children: [
            const SizedBox(height: 80),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.width()),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi Samuel,',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 7),
                      Text(
                        'Explore Musico',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w800,
                        ),
                      )
                    ],
                  ),
                  CircleAvatar(
                    radius: 30,
                    child: Image.asset(AssetManager.good),
                  )
                ],
              ),
            ),
            const SizedBox(height: 54),
            ListView.builder(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    categoryName = categoriesList[index];
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.width()),
                    child: Container(
                      width: 66.width(),
                      height: 43,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        color: categoryName == categoriesList[index]
                            ? const Color(0xFFBD1D73)
                            : Colors.transparent,
                      ),
                      child: Center(
                        child: Text(
                          categoriesList[index].toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
