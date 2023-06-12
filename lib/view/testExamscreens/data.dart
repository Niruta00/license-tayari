import 'package:flutter/material.dart';

class QuestionModel {
  String question;
  // String img;
  Map<String, bool> answers;
  QuestionModel(this.question, this.answers);
}

List<QuestionModel> IqQuestions = [
  QuestionModel(
    "Find the number of triangles in the given figure.",
    {
      "28": false,
      "32": false,
      "36": true,
      "40": false,
    },
  ),
  QuestionModel(
    "Find the number of triangles in the given figure.",
    {
      "28": false,
      "32": false,
      "36": true,
      "40": false,
    },
  ),
  QuestionModel(
    "Find the number of triangles in the given figure.",
    {
      "28": false,
      "32": false,
      "36": true,
      "40": false,
    },
  ),
  QuestionModel(
    "Find the number of triangles in the given figure.",
    {
      "28": false,
      "32": false,
      "36": true,
      "40": false,
    },
  ),
  QuestionModel(
    "Find the number of triangles in the given figure.",
    {
      "28": false,
      "32": false,
      "36": true,
      "40": false,
    },
  ),

];
