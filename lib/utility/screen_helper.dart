import 'package:flutter/material.dart';

class ScreenHelper {
  final BuildContext context;

  double heightOld = 0;
  double widthOld = 0;
  double appBarHeight = 0;
  double menuHeight = 0;
  double paddHorizonzal = 0;

  double widthFactor = 0;
  double heightFactor = 0;
  double fontSizeFactor = 0;

  double heightFigmaAll = 812;
  double widthFigmaAll = 412;

  double heightGross = 0;
  double widthGross = 0;

  double height = 0;
  double width = 0;

  bool isHeightChanged = false;

  ScreenHelper(this.context) {
    initialize();
  }

  void initialize() {
    double paddingTop = 0; // MediaQuery.of(context).padding.top;
    double paddingBottom = 0; //    MediaQuery.of(context).padding.bottom;

    heightGross = MediaQuery.of(context).size.height - paddingTop - paddingBottom;
    widthGross = MediaQuery.of(context).size.width;

    double factorFigma = heightFigmaAll / widthFigmaAll;
    double factorDevice = heightGross / widthGross;

    if (factorFigma < factorDevice) {
      isHeightChanged = true;
      height = factorFigma / factorDevice * heightGross;
      width = widthGross;
    } else {
      height = heightGross;
      width = factorDevice / factorFigma * widthGross;
    }

    double safeTop = MediaQuery.of(context).padding.top;

    double safeBottom = 0;

    double safeHeight = safeTop + safeBottom;
    double height0 = MediaQuery.of(context).size.height - safeHeight;

    double safeWidth = MediaQuery.of(context).padding.left + MediaQuery.of(context).padding.right;
    double width0 = MediaQuery.of(context).size.height - safeHeight;

    appBarHeight = 0 * height0 / 914;
    menuHeight = 60 * height0 / 914;

    paddHorizonzal = 0;
    heightOld = height0 - appBarHeight - menuHeight;
    widthOld = width0 - 2 * paddHorizonzal;

    widthFactor = MediaQuery.of(context).size.width / 412;
    heightFactor = MediaQuery.of(context).size.height / 917;
    fontSizeFactor = MediaQuery.of(context).size.width / 475; // 475;
  }

  double getHeight(double heightFigma) {
    return heightFigma * height / heightFigmaAll;
  }

  double getWidth(double widthFigma) {
    return widthFigma * width / widthFigmaAll;
  }

  double getFontSize(double fontSizeFigma) {
    if (isHeightChanged) {
      return fontSizeFigma * width / widthFigmaAll;
    } else {
      return fontSizeFigma * height / heightFigmaAll;
    }
  }

  double getHeightOld(double heightFigma) {
    return heightFigma = heightFigma * heightFactor;
  }

  double getFontSizeOld(double fontSizeFigma) {
    return fontSizeFigma * fontSizeFactor;
  }

  double getTextWidthOverpass(BuildContext context) {
    TextStyle style = TextStyle(
      fontFamily: 'OverpassMono', // Schriftart verwenden
      fontWeight: FontWeight.w600, // Medium Gewicht (500)
      fontSize: 46,
    );

    String text = '01234567890123';

    final textSpan = TextSpan(text: text, style: style);
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );

    // Berechnung der Breite des Textes
    textPainter.layout(minWidth: 0, maxWidth: MediaQuery.of(context).size.width);

    return textPainter.size.width;
  }
}
