//import 'package:v_mat1/model/sections.dart';

import 'package:ver_mat/model/sections.dart';
import 'package:flutter/material.dart';

class Data {
  String secName; //section names
  String secImg; //sections images
  String secDes; //sections description
  String sectionName;
  //String sectionDescription;
  //String sectionContains;
  //String sectionType;
  List<section> sectionList;
  List<examples> examplesList;
  List<videos> networkVideos1;

  Data(
      {required this.secName,
      required this.secImg,
      required this.secDes,
      required this.sectionList,
      required this.sectionName,
      //required this.sectionDescription,
      //required this.sectionContains,
      // //required this.sectionType,
      required this.networkVideos1,
      required this.examplesList});
}

List<Data> data = [
  Data(
    secName: "Repeat Sentence",
    secImg:
        "https://alfastorage.s3.ap-southeast-2.amazonaws.com/blog-files/image-c193085f9ced259e6ea8bb436e0aa62a.jpg",
    secDes: "You will have  repeat the sentence",
    sectionList: [
      section(
          description: "You will have to Builds the Sentence",
          sectionImg:
              "https://deannajump.com/wp-content/uploads/2020/03/Slide6.jpg",
          sectionsName: "Section-B Sentence Builds"),
      section(
          description: "You will have to repeat the sentence",
          sectionImg:
              "https://www.insperity.com/wp-content/uploads/difficult_conversations640x302.png",
          sectionsName: "Section-C Conversations"),
      section(
          description: "You will have to Completion the sentence",
          sectionImg:
              "https://ielts-testpro.com/wp-content/uploads/2021/10/sentence-completion-questions-strategies.png",
          sectionsName: "Section-D Sentence Completion"),
      section(
          description: "You will have to fill in the blanks",
          sectionImg:
              "https://thumbs.dreamstime.com/b/dictation-concept-banner-texture-colorful-items-education-science-objects-september-school-supplies-dictation-157634318.jpg",
          sectionsName: "Section-E Dictation"),
      section(
          description: "You will have to Reconstruction the Passage",
          sectionImg: "https://i.ytimg.com/vi/6tZkZK9_ZCw/maxresdefault.jpg",
          sectionsName: "Section-F Passage Reconstruction")
    ],
    sectionName: '',
    examplesList: [
      examples(
          Examples: '1. The pay was too low for me to work there anymore.',
          sectionName: 'Section-A: Repeats',
          sectionDescription:
              '"Instructions before you start:-- In this section you will hear the sentence from the machine and you will have to repeat the sentence with accurate voice and bit faster"',
          sectionType: '',
          sectionContains:
              '-> Repeat Sentence -16 "You will have repeat the sentence.,"',
          message: "Here is the some examples from a Repeat Sentence ",
          Example1: '2. It’s not too late to change your mind.',
          Example2: '3. People know how easy it is to get lost in thought.',
          Example3:
              '4. We have a corporate program for those interested in large purchases.',
          Example4:
              '5. Surprisingly, Tim managed to raise funds for the repair project.',
          Example5: ''),
    ],
    networkVideos1: [
      videos(
          id: "Secton-A Sample Video",
          name:
              "https://alfastorage.s3.ap-southeast-2.amazonaws.com/blog-files/image-c193085f9ced259e6ea8bb436e0aa62a.jpg",
          videoUrl: "Videos/Repeat-A.mp4")
    ],
  ),
  Data(
    secName: "Sentence Builds",
    secImg: "https://deannajump.com/wp-content/uploads/2020/03/Slide6.jpg",
    secDes: "You will have  repeat the sentence",
    sectionList: [
      section(
          description: "You will have to Repeat Sentence",
          sectionImg:
              "https://alfastorage.s3.ap-southeast-2.amazonaws.com/blog-files/image-c193085f9ced259e6ea8bb436e0aa62a.jpg",
          sectionsName: "Section-A Repeat Sentence"),
      section(
          description: "You will have to repeat the sentence",
          sectionImg:
              "https://www.insperity.com/wp-content/uploads/difficult_conversations640x302.png",
          sectionsName: "Section-C Conversations"),
      section(
          description: "You will have to Completion the sentence",
          sectionImg:
              "https://ielts-testpro.com/wp-content/uploads/2021/10/sentence-completion-questions-strategies.png",
          sectionsName: "Section-D Sentence Completion"),
      section(
          description: "You will have to fill in the blanks",
          sectionImg:
              "https://thumbs.dreamstime.com/b/dictation-concept-banner-texture-colorful-items-education-science-objects-september-school-supplies-dictation-157634318.jpg",
          sectionsName: "Section-E Dictation"),
      section(
          description: "You will have to Reconstruction the Passage",
          sectionImg: "https://i.ytimg.com/vi/6tZkZK9_ZCw/maxresdefault.jpg",
          sectionsName: "Section-F Passage Reconstruction")
    ],
    sectionName: '',
    examplesList: [
      examples(
        sectionContains:
            '-> Rearrange the word groups into a sentence and Number of Questions-8',
        sectionDescription:
            '"Instructions before you start:-- In this section you will build the sentence., the machine says the random sentences and you will have to re-build the sentence with bit faster"',
        sectionName: 'Section-B: Sentence Builds',
        sectionType: '',
        message: 'Here is the some examples from a Sentence Build',
        Examples: '1. Was reading/my mother/her favorite magazine.',
        Example1: '2. Looking forward/we are/to the new cinema.',
        Example2: '3. Choose someone/let’s/to leave the group',
        Example3: '4. Screen each person/is expected to/the security guard',
        Example4: '5. A phone number/you enter/press one before',
        Example5: '6. Were unwilling to help/and her assistant/the manager',
      )
    ],
    networkVideos1: [
      videos(
          id: "Secton-B Sample Video",
          name: "https://deannajump.com/wp-content/uploads/2020/03/Slide6.jpg",
          videoUrl: "Videos/Sentence_Build-B.mp4")
    ],
  ),
  Data(
    secName: "Conversations",
    secImg:
        "https://www.insperity.com/wp-content/uploads/difficult_conversations640x302.png",
    secDes: "You will have  repeat the sentence",
    sectionList: [
      section(
          description: "You will have to Repeat Sentence",
          sectionImg:
              "https://alfastorage.s3.ap-southeast-2.amazonaws.com/blog-files/image-c193085f9ced259e6ea8bb436e0aa62a.jpg",
          sectionsName: "Section-A Repeat Sentence"),
      section(
          description: "You will have to Builds the Sentence",
          sectionImg:
              "https://deannajump.com/wp-content/uploads/2020/03/Slide6.jpg",
          sectionsName: "Section-B Sentence Builds"),
      section(
          description: "You will have to Completion the sentence",
          sectionImg:
              "https://ielts-testpro.com/wp-content/uploads/2021/10/sentence-completion-questions-strategies.png",
          sectionsName: "Section-D Sentence Completion"),
      section(
          description: "You will have to fill in the blanks",
          sectionImg:
              "https://thumbs.dreamstime.com/b/dictation-concept-banner-texture-colorful-items-education-science-objects-september-school-supplies-dictation-157634318.jpg",
          sectionsName: "Section-E Dictation"),
      section(
          description: "You will have to Reconstruction the Passage",
          sectionImg: "https://i.ytimg.com/vi/6tZkZK9_ZCw/maxresdefault.jpg",
          sectionsName: "Section-F Passage Reconstruction")
    ],
    sectionName: 'ra',
    examplesList: [
      examples(
        sectionName: 'Section-C:Conversations',
        sectionContains:
            'Number of Questions-8. You will hear the conversation between 2 people, followed by a question. Give a short, simple answer to the question.',
        sectionDescription:
            '"Instructions before you start:-- In this section you will to give a short, simple answer to the question.., In a machine two of the people are starts the conversation and after that conversation machine will ask a some simple questions., you will have to say the simple answer with accurate voice and bit faster"',
        sectionType: 'Number of Questions-8',
        message: 'Here is the some examples from a Conversations',
        Examples:
            '1.  Speaker A: “How was your business trip? “Speaker B: “There were thunderstorms the whole time.”Speaker A: “That sounds terrible.   ----Question: What happened during the business trip?”',
        Example1:
            '2. Speaker A: What do you do? Speaker B: I’m a teacher. Speaker A: it must be fun working with kids. ---  Question: What is the woman’s job?',
        Example2:
            '3. Speaker A: Where are my glasses?   Speaker B: I think they were on the table.  Speaker A: Oh right, thank you! ---Question: Where are the woman’s glasses? ',
        Example3:
            '4. Speaker A: “I’m sorry, but I can’t check this book out to you.”  Speaker B: “But I have a library card and I come here all the times.”  Speaker A: “Yes you have several items not yet returned.” --Question: Why can’t the man check out the book?',
        Example4:
            '5. Speaker A: “I’m sorry but you can’t take pictures in the gallery.”  Speaker B: “Okay, I’ll put my camera away.”  Speaker A: “Thanks for understanding”--Question: What did the woman put away? ',
        Example5:
            '6. Speaker A: What do you do?  Speaker B: I’m a teacher. Speaker A: it must be fun working with kids. --- Question: What is the woman’s job?',
      )
    ],
    networkVideos1: [
      videos(
          id: "Secton-C Sample Video",
          name:
              "https://www.insperity.com/wp-content/uploads/difficult_conversations640x302.png",
          videoUrl: "Videos/Conversation-C.mp4")
    ],
  ),
  Data(
    secName: "Sentence Completion",
    secImg:
        "https://ielts-testpro.com/wp-content/uploads/2021/10/sentence-completion-questions-strategies.png",
    secDes: "You will have  repeat the sentence",
    sectionList: [
      section(
          description: "You will have to Repeat Sentence",
          sectionImg:
              "https://alfastorage.s3.ap-southeast-2.amazonaws.com/blog-files/image-c193085f9ced259e6ea8bb436e0aa62a.jpg",
          sectionsName: "Section-A Repeat Sentence"),
      section(
          description: "You will have to Builds the Sentence",
          sectionImg:
              "https://deannajump.com/wp-content/uploads/2020/03/Slide6.jpg",
          sectionsName: "Section-B Sentence Builds"),
      section(
          description: "You will have to repeat the sentence",
          sectionImg:
              "https://www.insperity.com/wp-content/uploads/difficult_conversations640x302.png",
          sectionsName: "Section-C Conversations"),
      section(
          description: "You will have to fill in the blanks",
          sectionImg:
              "https://thumbs.dreamstime.com/b/dictation-concept-banner-texture-colorful-items-education-science-objects-september-school-supplies-dictation-157634318.jpg",
          sectionsName: "Section-E Dictation"),
      section(
          description: "You will have to Reconstruction the Passage",
          sectionImg: "https://i.ytimg.com/vi/6tZkZK9_ZCw/maxresdefault.jpg",
          sectionsName: "Section-F Passage Reconstruction")
    ],
    sectionName: 'haa',
    examplesList: [
      examples(
        Examples: '1. Her favorite hobby is _____. She has so many books.',
        sectionContains:
            'Number of Questions-18-- Type 1 word that fits the meaning of the sentence. 25 sec for each sentence.',
        sectionDescription:
            ' "Instructions before you start:-- In this section you will have to fill the blanks with proper answer within a time limit ',
        sectionName: 'Section-D: Sentence Completion',
        sectionType: '',
        message: 'Here is the some examples from a Sentence Completion',
        Example1: '2. He arrives ___ and is often the first one here.',
        Example2:
            '3. I asked a coworker to take over my ___ because I wasn’t feeling well.',
        Example3: '4. You are driving too _____. You should slow down.',
        Example4: '5. I haven’t eaten anything all day. I am so____!',
        Example5: '6. I ‘m a salesman. And you, what do you___?',
      )
    ],
    networkVideos1: [
      videos(
          id: "Secton-D Sample Video",
          name:
              "https://ielts-testpro.com/wp-content/uploads/2021/10/sentence-completion-questions-strategies.png",
          videoUrl: "Videos/Sentece_Comp-D.mp4")
    ],
  ),
  Data(
    secName: "Dictation",
    secImg:
        "https://thumbs.dreamstime.com/b/dictation-concept-banner-texture-colorful-items-education-science-objects-september-school-supplies-dictation-157634318.jpg",
    secDes: "You will have  repeat the sentence",
    sectionList: [
      section(
          description: "You will have to Repeat Sentence",
          sectionImg:
              "https://alfastorage.s3.ap-southeast-2.amazonaws.com/blog-files/image-c193085f9ced259e6ea8bb436e0aa62a.jpg",
          sectionsName: "Section-A Repeat Sentence"),
      section(
          description: "You will have to Builds the Sentence",
          sectionImg:
              "https://deannajump.com/wp-content/uploads/2020/03/Slide6.jpg",
          sectionsName: "Section-B Sentence Builds"),
      section(
          description: "You will have to repeat the sentence",
          sectionImg:
              "https://www.insperity.com/wp-content/uploads/difficult_conversations640x302.png",
          sectionsName: "Section-C Conversations"),
      section(
          description: "You will have to Completion the sentence",
          sectionImg:
              "https://ielts-testpro.com/wp-content/uploads/2021/10/sentence-completion-questions-strategies.png",
          sectionsName: "Section-D Sentence Completion"),
      section(
          description: "You will have to Reconstruction the Passage",
          sectionImg: "https://i.ytimg.com/vi/6tZkZK9_ZCw/maxresdefault.jpg",
          sectionsName: "Section-F Passage Reconstruction")
    ],
    sectionName: 'Pobey',
    examplesList: [
      examples(
        Examples: '1. The train comes here every 20 minutes.',
        sectionContains:
            'Number of Questions-14 - Type each sentence exactly as you here. 25 sec for each sentence.Attention-Spelling -Punctuation',
        sectionDescription:
            ' "Instructions before you start:-- In this section you will have to type the sentece., Machine will says the some sentences and you will have to type same sentence without Spell mistakes and accurate ',
        sectionName: 'Section-E: Dictation',
        sectionType: '',
        message: ' Here is the some examples from a Dictation',
        Example1: '2. I wish we didn’t have to work that night.',
        Example2:
            '3. The company is having a party for all employees this weekend.',
        Example3: '4. You can use the computer in a minute.',
        Example4: '5. The company first opened when I was much younger.',
        Example5: '6. Many companies operate in more than one country.',
      )
    ],
    networkVideos1: [
      videos(
          id: "Secton-E Sample Video",
          name:
              "https://thumbs.dreamstime.com/b/dictation-concept-banner-texture-colorful-items-education-science-objects-september-school-supplies-dictation-157634318.jpg",
          videoUrl: "Videos/Dictation-E.mp4")
    ],
  ),
  Data(
    secName: "Passage Reconstruction",
    secImg: "https://i.ytimg.com/vi/6tZkZK9_ZCw/maxresdefault.jpg",
    secDes: "You will have  repeat the sentence",
    sectionList: [
      section(
          description: "You will have to Repeat Sentence",
          sectionImg:
              "https://alfastorage.s3.ap-southeast-2.amazonaws.com/blog-files/image-c193085f9ced259e6ea8bb436e0aa62a.jpg",
          sectionsName: "Section-A Repeat Sentence"),
      section(
          description: "You will have to Builds the Sentence",
          sectionImg:
              "https://deannajump.com/wp-content/uploads/2020/03/Slide6.jpg",
          sectionsName: "Section-B Sentence Builds"),
      section(
          description: "You will have to repeat the sentence",
          sectionImg:
              "https://www.insperity.com/wp-content/uploads/difficult_conversations640x302.png",
          sectionsName: "Section-C Conversations"),
      section(
          description: "You will have to Completion the sentence",
          sectionImg:
              "https://ielts-testpro.com/wp-content/uploads/2021/10/sentence-completion-questions-strategies.png",
          sectionsName: "Section-D Sentence Completion"),
      section(
          description: "You will have to fill in the blanks",
          sectionImg:
              "https://thumbs.dreamstime.com/b/dictation-concept-banner-texture-colorful-items-education-science-objects-september-school-supplies-dictation-157634318.jpg",
          sectionsName: "Section-E Dictation"),
    ],
    sectionName: 'Jafaa',
    examplesList: [
      examples(
        sectionContains:
            'Number of Questions-2 --> 30 sec to read the paragraph. After 30 sec paragraph disappear from the screen. 90 sec to reconstruct the paragraph. Right in your own word.Your answer score for Clear and Accurate context.Net word to word memorization not required. After 90 sec it will automatically be saved. ',
        sectionDescription:
            ' "Instructions before you start:-- In this section you will have to re-construct the below individual Passages with in a time ',
        sectionName: 'Section-F: Passage Reconstruction',
        sectionType: '',
        message: 'Here is the some examples from a Passage Reconstruction',
        Examples:
            '1.  John bought a new phone and was looking forward to try it out as soon as possible. The moment John got home, he tried to run it on, but it didn’t work. He immediately drove back to the store. The salesperson was very nice and showed John how to insert the battery. John was pleased that the phone was working properly, but at the same time. He felt embarrassed because he should have read the instructions.',
        Example1:
            '2.  Mark your calendars for the office party! This year, we are having a barbecue Saturday night at 6 p.m. dress is casual. Please sign up and tell us how many people you will be bringing. See you there!',
        Example2:
            '3. This is our annual reminder to all employees. Our hospital is known in our community for excellent customer care. We have been providing friendly and quality services to all our patients and are committed to doing the same again this year. Greet your patients with a smile and hospitality.',
        Example3:
            '4.  Anna was organizing a birthday party for her coworker, Susan. Anna wanted it to be a surprise party, so Anna warned everyone else in the office not to tell Susan about the party. Then, Anna asked the president of the company to send out an email inviting everyone to a company meeting. Susan walked in to the conference room expecting a meeting, but instead, everyone shouted, ‘Happy Birthday’.',
        Example4:
            '5.  Thank you for your interest in our certificate program. The program is specifically designed for people with a full-time job. All our classes are offered at night and on weekends. Not only can our program offer you the knowledge you need in your field, it will also give you the opportunity to meet with people working in the same industry as you are. Don’t hesitate to contact me if you have any questions.',
        Example5:
            '6. Sam was on a busy flight that had been delayed. The plane finally landed and arrived at the gate. Then all the passengers got up to get their luggage. The woman in front of Sam accidentally bumped him in the arm. Just as she was apologizing, her bag fell from the overhead compartment and hit him on the head. The woman felt awful. Sam decided he didn’t want to fly again any time soon.',
      )
    ],
    networkVideos1: [
      videos(
          id: "Secton-F Sample Video",
          name: "https://i.ytimg.com/vi/6tZkZK9_ZCw/maxresdefault.jpg",
          videoUrl: "Videos/Passage-Re-F.mp4")
    ],
  )
];
