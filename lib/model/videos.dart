import 'package:ver_mat/model/sections.dart';
import 'package:flutter/material.dart';
import 'package:ver_mat/model/vClass.dart';
//import 'package:ver_mat/vClass.dart';

class Nvideos {
  List<videosn> nVideosn;

  Nvideos({
    required this.nVideosn,
  });
}

List<Nvideos> nvideosn = [
  Nvideos(nVideosn: [
    videosn(
        id: "Secton-A Sample Video",
        name:
            "https://alfastorage.s3.ap-southeast-2.amazonaws.com/blog-files/image-c193085f9ced259e6ea8bb436e0aa62a.jpg",
        videoUrl: "Videos/Repeat-A.mp4"),
    videosn(
        id: "Secton-B Sample Video",
        name: "https://deannajump.com/wp-content/uploads/2020/03/Slide6.jpg",
        videoUrl: "Videos/Sentence_Build-B.mp4"),
    videosn(
        id: "Secton-C Sample Video",
        name:
            "https://www.insperity.com/wp-content/uploads/difficult_conversations640x302.png",
        videoUrl: "Videos/Conversation-C.mp4"),
    videosn(
        id: "Secton-D Sample Video",
        name:
            "https://ielts-testpro.com/wp-content/uploads/2021/10/sentence-completion-questions-strategies.png",
        videoUrl: "Videos/Sentece_Comp-D.mp4"),
    videosn(
        id: "Secton-E Sample Video",
        name:
            "https://thumbs.dreamstime.com/b/dictation-concept-banner-texture-colorful-items-education-science-objects-september-school-supplies-dictation-157634318.jpg",
        videoUrl: "Videos/Dictation-E.mp4"),
    videosn(
        id: "Secton-F Sample Video",
        name: "https://i.ytimg.com/vi/6tZkZK9_ZCw/maxresdefault.jpg",
        videoUrl: "Videos/Passage-Re-F.mp4"),
  ]),
];
