import 'dart:ui';

class DesignColors {
  static const innerCircleBlue = Color(0xFF0F184D);
  static const midCircleLightBlue = Color(0xCC1D2760);
  static const midCircleDarkBlue = Color(0xDD151B4A);
  static const backgroundLeftSide = Color(0xFF030728);
  static const backgroundRightSide = Color(0xFF0E184A);
  static const textColor = Color(0xFF808CBA);
  static const activeTextColor = Color(0xFFD1D8F3);
}

  List<Color> get gradientColor {
    return <Color>[
            const Color(0xFF0F184D),
            const Color(0xCC1D2760),
            const Color(0xDD151B4A),
            const Color(0xFF030728),
            const Color(0xFF0E184A),
            const Color(0xFF808CBA),
            const Color(0xFFD1D8F3),
          ];
  }