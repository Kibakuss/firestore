import 'package:flutter/material.dart';

class Workout {
  late String title;
  late String author;
  late String description;
  late String level;

  Workout(
      {required this.title,
      required this.author,
      required this.description,
      required this.level});
}
