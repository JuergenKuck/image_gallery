import 'package:flutter/material.dart';

class GridHelper {
  BoxConstraints constraints;
  int crossAxisCount;
  final double quotBH; // Bildbreite/Bildhöhe
  final double ePerc; // Randabstand links, rechts und oben
  final double ft; //unterer Rand beogen auf regulären Rand

  final double spacingRelatedPerc; // in % der Breite des Constraints

  double widthConstraints = 0;
  double widthAvailable = 0;

  GridHelper({
    this.constraints = const BoxConstraints(),
    this.crossAxisCount = 2,
    this.ePerc = 5,
    this.ft = 2,
    this.quotBH = 1400.0 / 742.0,
    this.spacingRelatedPerc = 1,
  }) {
    widthConstraints = constraints.maxWidth;
    widthAvailable = widthConstraints - (crossAxisCount - 1) * spacing;
  }

  double get etPerc => ft * ePerc; // Randabstand unten für den Text
  double get aPerc => 100 - 2 * ePerc; // Bildbreite
  double get bPerc => aPerc / quotBH; // Bildhöhe

  double get aspectRatio => 100 / (bPerc + ePerc + etPerc); // Gridbreite / Gridhöhe
  double get spacing => spacingRelatedPerc * widthConstraints / 100;
  double get widthGrid => widthAvailable / crossAxisCount;
  double get heightGrid => widthGrid / aspectRatio;
  double get e => ePerc * widthGrid / 100;
  double get et => etPerc * widthGrid / 100;
  double get width => aPerc * widthGrid / 100;
  double get height => bPerc * widthGrid / 100;
}
