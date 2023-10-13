import 'package:flutter/material.dart';

import '../extensions/color_extention/color_extension.dart';

class ColorManager {
  static final white = HexColor.fromHex("#FFFFFF");
  static final grey = HexColor.fromHex("#8A8A8A");
  static final black101 = HexColor.fromHex("#212223");
  static final linear1 = HexColor.fromHex("#A4376B");
  static final linear2 = HexColor.fromHex("#632C46");
  static final linear3 = HexColor.fromHex("#2400FF");
  static final linear4 = HexColor.fromHex("#632C46");
  static final linear5 = HexColor.fromHex("#FF008A");

  static const gradient1 = LinearGradient(
    begin: Alignment.topLeft,
    colors: [
      Color(0xFFD91A46),
      Color(0xFFFBAA47),
      Color(0xFFA60F93),
    ],
  );
}
