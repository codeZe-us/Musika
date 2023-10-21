import 'package:flutter/material.dart';
import 'package:musika/src/constant/extensions/barrel_extensions.dart';
import 'package:musika/src/constant/managers/asset_manager.dart';

import '../../../constant/managers/color_manager.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 59),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 21),
                  child: Icon(Icons.arrow_back_ios, color: Colors.white),
                ),
                SizedBox(width: 101.width()),
                const Text(
                  'My Profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 73.width()),
                const Icon(
                  Icons.settings,
                  color: Colors.white,
                )
              ],
            ),
            const SizedBox(height: 26),
            Padding(
              padding: EdgeInsets.only(left: 135.width()),
              child: CircleAvatar(
                radius: 57,
                child: Image.asset(
                  AssetManager.good2,
                ),
              ),
            ),
            const SizedBox(height: 26),
            Padding(
              padding: EdgeInsets.only(left: 103.width()),
              child: const Column(
                children: [
                  Text(
                    'Samuel Lawal',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '@Psalmwise Boss',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 78),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.width()),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '250',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        'Songs ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 29.width()),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '40',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      'Saves',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                SizedBox(width: 29.width()),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '30',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      'Followers',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 29.width()),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '27',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      'Following',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                SizedBox(width: 20.width()),
              ],
            ),
            const SizedBox(height: 66),
            Padding(
              padding: EdgeInsets.only(left: 15.width()),
              child: const Text(
                'Notifications',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 12.5),
            Padding(
              padding: EdgeInsets.only(left: 17.5.width()),
              child: Container(
                width: 333.width(),
                height: 1,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 19.5),
            Padding(
              padding: EdgeInsets.only(left: 17.5.width()),
              child: const Text(
                'Connected Services',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 18),
            Padding(
              padding: EdgeInsets.only(left: 17.5.width()),
              child: Container(
                width: 333.width(),
                height: 1,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 12.5),
            Padding(
              padding: EdgeInsets.only(left: 17.5.width()),
              child: const Text(
                'About',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 17.5.width()),
              child: Container(
                width: 333.width(),
                height: 1,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 11.5),
            Padding(
              padding: EdgeInsets.only(left: 17.5.width()),
              child: const Text(
                'LogOut',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
