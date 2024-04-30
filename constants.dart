import 'package:flutter/material.dart';
import 'package:kuch_bhi_ai/widgets/text_widget.dart';

const Color kScaffoldBackgroundColor = Color(0xFF343541);
const Color kCardColor = Color(0xFF444654);

const List<String> kModels = [
  'Model1',
  'Model2',
  'Model3',
  'Model4',
  'Model5',
  'Model6',
  'Model1',
  'Model2',
  'Model3',
  'Model4',
  'Model5',
  'Model6',
];

List<DropdownMenuItem<String>>? get getModelsItem {
  List<DropdownMenuItem<String>>? modelsItems =
      List<DropdownMenuItem<String>>.generate(
    kModels.length,
    (index) => DropdownMenuItem(
      value: kModels[index],
      child: TextWidget(
        label: kModels[index],
        fontSize: 15,
      ),
    ),
  );
  return modelsItems;
}

final chatMessages = [
  {
    'msg': 'Hello',
    'chatIndex': 0,
  },
  {
    'msg': 'Hello, How can I assist you today ?',
    'chatIndex': 1,
  },
  {
    'msg': 'How are you ?',
    'chatIndex': 0,
  },
  {
    'msg':
        'Finding a specific job would require access to current job listings, which I don\'t have. However, I can provide you with some guidance on how to find a Flutter job.',
    'chatIndex': 1,
  },
  {
    'msg': 'Can i restart my career after a 4 year gap ?',
    'chatIndex': 0,
  },
  {
    'msg':
        'Absolutely, you can restart your career after a 4-year gap! Many people take breaks from their careers for various reasons such as caregiving, personal development, health reasons, or exploring new interests.',
    'chatIndex': 1,
  },
];
