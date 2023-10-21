import 'package:flutter/material.dart';
import 'package:musika/src/constant/extensions/size_config_extension/size_config_extension.dart';
import 'package:musika/src/presentation/widgets/custom_cupertino_swiitch.dart';

import '../../../constant/managers/color_manager.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: 375.width(),
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
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.021),
                  child: const Icon(Icons.arrow_back_ios, color: Colors.white),
                ),
                SizedBox(width: 101.width()),
                const Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 71),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.021),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        'Dark Mode',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                          width: screenWidth * 0.173),
                      const CustomCupertinoSwitch()
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 41),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 21.width()),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        'Equalizer',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.53),
                      const Text(
                        'Default',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 41),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 21.width()),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        'Show long tracks',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.35),
                      const CustomCupertinoSwitch()
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 41),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 21.width()),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Smart Volume',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            'Equal volume for all tracks',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.26),
                      const CustomCupertinoSwitch()
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 41),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 21.width()),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        'Stop music when phone locks',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.12),
                      const CustomCupertinoSwitch()
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 41),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 21.width()),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Notifications',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            'Display at the navigation bar',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.23),
                      const CustomCupertinoSwitch()
                    ],
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
