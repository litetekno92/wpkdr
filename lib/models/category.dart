import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Category {
  final int id;
  final String title;
  final ColorSwatch color;
  final Icon icon;

  /// Creates a [Category].
  ///
  /// A [Category] saves the title of the Category (e.g. 'Length'), its color for
  /// the UI, and the icon that represents it (e.g. a ruler).
  // While the  checks for whether a titled parameter is passed in,
  // it doesn't check whether the object passed in is null. We check that
  // in the assert statement.
  Category({
    this.id,
    this.title,
    this.color,
    this.icon,
  });
}

List<Category> categories = [
  Category(
    id: 1,
    title: "ACCUEIL",
    color: Colors.red,
    icon: Icon(FontAwesomeIcons.home),
  ),
  Category(
    id: 1,
    title: "ECONOMIE",
    color: Colors.red,
    icon: Icon(FontAwesomeIcons.landmark),
  ),
  Category(
    id: 1,
    title: "SCIENCE & HIGH-TECH",
    color: Colors.red,
    icon: Icon(FontAwesomeIcons.atom),
  ),
  Category(
    id: 1,
    title: "SPORTS",
    color: Colors.red,
    icon: Icon(FontAwesomeIcons.running),
  ),
  Category(
      id: 1,
      title: "ARTS & CULTURE",
      color: Colors.red,
      icon: Icon(FontAwesomeIcons.artstation))
];
