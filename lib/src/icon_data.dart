library flutter_cMoon_icons;

import 'package:flutter/widgets.dart';

/// [IconData] for MoonIcon from a code point

class IconDataMoon extends IconData {
  final Color iconIcon;
  const IconDataMoon(int codePoint, [this.iconIcon])
      : super(
          codePoint,
          fontFamily: "icomoon",
       
        );
}