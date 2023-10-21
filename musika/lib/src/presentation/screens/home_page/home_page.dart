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

  int current = 0;

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
            SizedBox(
              width: double.infinity,
              height: 43,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: categoriesList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        current = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 13.width(),
                        // right: 15.width()
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.width(),
                      ),
                      // height: 34,
                      decoration: BoxDecoration(
                        color: current == index
                            ? const Color(0xFFBD1D73)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(
                          50,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          categoriesList[index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 42),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.width()),
              child: Container(
                width: 318.width(),
                height: 170,
                decoration: ShapeDecoration(
                  color: const Color(0xFFC7C0F4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 17.width(), top: 27),
                          child: const Text(
                            'Make your day\nproductive',
                            style: TextStyle(
                              color: Color(0xFF622C46),
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(height: 50.height()),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 15.width(),
                                  bottom: 8,
                                  right: 5.width()),
                              child: CircleAvatar(
                                radius: 15,
                                child: Image.asset(AssetManager.name),
                              ),
                            ),
                            const Text(
                              'Psalmwise',
                              style: TextStyle(
                                color: Color(0xFF622C46),
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Positioned(
                        top: 0,
                        bottom: 0,
                        right: 0,
                        child: Image.asset(AssetManager.position))
                  ],
                ),
              ),
            ),
            const SizedBox(height: 29),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 33.width()),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recently Played',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    'view all',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                     
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
