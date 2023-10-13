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
            )
          ],
        ),
      ),
    );
  }
}
