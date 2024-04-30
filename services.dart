// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kuch_bhi_ai/constants/constants.dart';
import 'package:kuch_bhi_ai/widgets/drop_down.dart';
import 'package:kuch_bhi_ai/widgets/text_widget.dart';

class Services {
  static Future<void> showModalSheet({required BuildContext context}) async {
    await showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        backgroundColor: kScaffoldBackgroundColor,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.all(18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: TextWidget(
                    label: 'Chosen Model:',
                    fontSize: 16,
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: ModelDropDownWidget(),
                ),
              ],
            ),
          );
        });
  }
}
