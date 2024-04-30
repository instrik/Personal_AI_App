// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:kuch_bhi_ai/constants/constants.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kuch_bhi_ai/services/api_service.dart';
import 'package:kuch_bhi_ai/widgets/chat_widget.dart';
import 'package:kuch_bhi_ai/widgets/text_widget.dart';
import 'package:kuch_bhi_ai/services/services.dart';

import '../services/assets_manager.dart';

class ChatScreen extends StatefulWidget {
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool _isTyping = true;
  late TextEditingController textEditingController;

  @override
  void initState() {
    textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        leading: Padding(
          padding: EdgeInsets.all(10),
          child: Image.asset(AssetsManager.logo),
        ),
        title: Text(
          'Personal  AI',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              await Services.showModalSheet(context: context);
            },
            icon: Icon(
              Icons.more_vert_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return ChatWidget(
                      msg: chatMessages[index]['msg'].toString(),
                      chatIndex: int.parse(
                          chatMessages[index]['chatIndex'].toString()),
                    );
                  }),
            ),
            if (_isTyping) ...[
              SpinKitThreeBounce(
                color: Colors.white,
                size: 18,
              ),
              // SizedBox(
              //   height: 15,
              // ),
              // Material(
              Container(
                color: kCardColor,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          controller: textEditingController,
                          onSubmitted: (value) {
                            //to do message
                          },
                          decoration: InputDecoration.collapsed(
                            hintText: 'How can I help you',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () async {
                          try {
                            await ApiService.getModels();
                          } catch (error) {
                            print('error $error');
                          }
                        },
                        icon: Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
