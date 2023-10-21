import 'package:flutter/material.dart';
import 'package:musika/src/constant/extensions/barrel_extensions.dart';

class CustomCupertinoSwitch extends StatefulWidget {
  const CustomCupertinoSwitch({super.key});

  @override
  CustomCupertinoSwitchState createState() => CustomCupertinoSwitchState();
}

class CustomCupertinoSwitchState extends State<CustomCupertinoSwitch> {
  bool _switchValue = false;

  void _toggleSwitch(bool value) {
    setState(() {
      _switchValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _toggleSwitch(!_switchValue);
      },
      child: Container(
        width: 55.width(),
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: _switchValue ? const Color(0xFFBD1D73) : const Color(0xFFBD1D73),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Row(
              mainAxisAlignment: _switchValue
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color:Color(0xFFD9D9D9),
                  ),
                ),
              ],
            ),
            Positioned(
              left: _switchValue ? 33.width() : 5.width(),
              child: Text(
                _switchValue ? 'On' : 'Off',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
