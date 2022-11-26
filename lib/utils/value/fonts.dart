import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_me/utils/value/color_config.dart';

enum FontFamily {
  oswald,
  sacramento,
  openSans,
  skranji,
  nunito,
}

class Fonts {
  const Fonts(
      {this.size = 12,
      this.fontFamily,
      this.fontWeight,
      this.color,
      this.height = 1.7});

  final double size;
  final FontFamily? fontFamily;
  final FontWeight? fontWeight;
  final Color? color;
  final double height;

  TextStyle get titleNunito {
    return GoogleFonts.nunito(
      height: height,
      fontSize: size,
      fontWeight: fontWeight ?? FontWeight.w700,
      fontStyle: FontStyle.normal,
      color: color ?? ColorConfig.headlineText,
    );
  }

  TextStyle get titleSkranji {
    return GoogleFonts.skranji(
      height: height,
      fontSize: size,
      fontWeight: fontWeight ?? FontWeight.w700,
      fontStyle: FontStyle.normal,
      color: color ?? ColorConfig.headlineText,
    );
  }

  TextStyle get titleSacramento {
    return GoogleFonts.sacramento(
      height: height,
      fontSize: size,
      fontWeight: fontWeight ?? FontWeight.w700,
      fontStyle: FontStyle.normal,
      color: color ?? ColorConfig.headlineText,
    );
  }

  TextStyle get titleOswald {
    return GoogleFonts.oswald(
      height: height,
      fontSize: size,
      fontWeight: fontWeight ?? FontWeight.w700,
      fontStyle: FontStyle.normal,
      color: color ?? ColorConfig.headlineText,
    );
  }

  TextStyle get titleOpenSans {
    return GoogleFonts.openSans(
      height: height,
      fontSize: size,
      fontWeight: fontWeight ?? FontWeight.w700,
      fontStyle: FontStyle.normal,
      color: color ?? ColorConfig.headlineText,
    );
  }
}
