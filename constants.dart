import 'package:flutter/material.dart';
import 'package:kuch_bhi_ai/widgets/text_widget.dart';

const Color kScaffoldBackgroundColor = Color(0xFF343541);
const Color kCardColor = Color(0xFF444654);

const List<String> kModels = [
  'Model1',
  // 'Model2',
  // 'Model3',
  // 'Model4',
  // 'Model5',
  // 'Model6',
  // 'Model1',
  // 'Model2',
  // 'Model3',
  // 'Model4',
  // 'Model5',
  // 'Model6',
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
  // {
  //   'msg': 'Hello',
  //   'chatIndex': 0,
  // },

];
