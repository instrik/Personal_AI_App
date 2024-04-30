import 'package:flutter/material.dart';
import 'package:kuch_bhi_ai/constants/constants.dart';
import 'package:kuch_bhi_ai/services/api_service.dart';
import 'package:kuch_bhi_ai/widgets/text_widget.dart';

class ModelDropDownWidget extends StatefulWidget {
  @override
  State<ModelDropDownWidget> createState() => _ModelDropDownWidgetState();
}

class _ModelDropDownWidgetState extends State<ModelDropDownWidget> {
  String currentModel = 'Model 1';
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ApiService.getModels(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: TextWidget(
                label: snapshot.error.toString(),
              ),
            );
          }
          return snapshot.data == null || snapshot.data!.isEmpty
              ? SizedBox.shrink()
              : DropdownButton(
                  dropdownColor: kScaffoldBackgroundColor,
                  iconEnabledColor: Colors.white,
                  items: getModelsItem,
                  value: currentModel,
                  onChanged: (value) {
                    setState(() {
                      currentModel = value.toString();
                    });
                  },
                );
        });
  }
}
