import 'dart:convert';
import 'package:flutter/services.dart';

class QuestionData {
  final int id;
  final String title;
  final String question;
  final String button_txt;
  final List<Map<String, dynamic>> choices;
  final bool next;

  QuestionData({
    required this.id,
    required this.title,
    required this.question,
    required this.button_txt,
    required this.choices,
    required this.next
  });

  factory QuestionData.fromJson(Map<String, dynamic> json){
    return QuestionData(
        id: json["id"],
        title: json["title"],
        question: json["question"],
        button_txt: json["button_txt"],
        choices: json["choices"],
        next: json["next"]
    );
  }
}


Future<List<QuestionData>> loadQuestionData() async{
  final String response = await rootBundle.loadString('assets/data/qiestions.json');
  final data = jsonDecode(response);
  return (data["questions"] as List).map((json) => QuestionData.fromJson(json)).toList();
}