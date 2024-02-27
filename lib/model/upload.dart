import 'package:flutter/cupertino.dart';

class Upload {
  String sectionName;
  String sectionDescription;
  String sectionContains;
  String sectionType;
  List<examples> examplesList;

  Upload(
      {required this.sectionName,
      required this.sectionDescription,
      required this.sectionContains,
      required this.sectionType,
      required this.examplesList});
}

class examples {
  late String Examples;
  examples({required this.Examples});
}

List<Upload> upload = [
  Upload(
      sectionName: "Section-A: Repeats",
      sectionDescription: "sectionDescription",
      sectionContains: "sectionContains",
      sectionType: "sectionType",
      examplesList: [
        examples(
          Examples: "",
        )
      ]),
  Upload(
      sectionName: "Section-B: Sentence Builds",
      sectionDescription: "sectionDescription",
      sectionContains: "sectionContains",
      sectionType: "sectionType",
      examplesList: [examples(Examples: "")]),
  Upload(
      sectionName: "Section-C: Conversations",
      sectionDescription: "sectionDescription",
      sectionContains: "sectionContains",
      sectionType: "sectionType",
      examplesList: [examples(Examples: "")]),
  Upload(
      sectionName: "Section-D: Sentence Completion",
      sectionDescription: "sectionDescription",
      sectionContains: "sectionContains",
      sectionType: "sectionType",
      examplesList: [examples(Examples: "")]),
  Upload(
      sectionName: "Section-E:Dictation",
      sectionDescription: "sectionDescription",
      sectionContains: "sectionContains",
      sectionType: "sectionType",
      examplesList: [examples(Examples: "")]),
  Upload(
      sectionName: "Section-F:Passage Reconstruction",
      sectionDescription:
          "30 sec to read the paragraph. After 30 sec paragraph disappear from the screen. 90 sec to reconstruct the paragraph.Right in your own word.Your answer score for Clear and Accurate context",
      sectionContains: "Number of Questions-2",
      sectionType: "You will have to re-construct the pragraph before 90sec",
      examplesList: [
        examples(
            Examples:
                "John bought a new phone and was looking forward to try it out as soon as possible. The moment John got home, he tried to run it on, but it didn’t work. He immediately drove back to the store. The salesperson was very nice and showed John how to insert the battery. John was pleased that the phone was working properly, but at the same time. He felt embarrassed because he should have read the instructions.")
      ]),
];


///lisst view builder 
 