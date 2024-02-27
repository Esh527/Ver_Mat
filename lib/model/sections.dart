// ignore: camel_case_types
import 'package:video_player/video_player.dart';

class section {
  String sectionsName;
  String sectionImg;
  String description;
  section(
      {required this.description,
      required this.sectionImg,
      required this.sectionsName});
}

class examples {
  String Examples;
  String Example1;
  String Example2;
  String Example3;
  String Example4;
  String Example5;
  String sectionName;
  String sectionDescription;
  String sectionContains;
  String sectionType;
  String message;

  examples({
    required this.Examples,
    required this.sectionName,
    required this.sectionDescription,
    required this.sectionContains,
    required this.sectionType,
    required this.message,
    required this.Example1,
    required this.Example2,
    required this.Example3,
    required this.Example4,
    required this.Example5,
  });

  String get examplesList => Examples;
}

class videos {
  String id;
  String name;
  String videoUrl;

  videos({required this.id, required this.name, required this.videoUrl});
}
