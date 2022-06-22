import 'package:flutter/material.dart';
import '../core/design_config.dart';
import 'dart:async';
// ignore_for_file: library_private_types_in_public_api

class OneChat extends StatefulWidget {
  const OneChat({Key? key}) : super(key: key);

  @override
  _OneChatState createState() => _OneChatState();
}

class _OneChatState extends State<OneChat> {
  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello, Do", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Hey Kriss, I am doing fine dude. wbu?",
        messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              centerTitle: false,
              title: const Text('Dr.Sara Gonzalez',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: DesignConfig.textColor,
                      fontSize: DesignConfig.titleFontSize,
                      fontWeight: FontWeight.w600)),
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: GestureDetector(
                child: const Icon(
                  Icons.arrow_back_ios_sharp,
                  color: DesignConfig.textColor,
                  size: DesignConfig.appBarIconSize,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            body: Stack(
              children: <Widget>[
                ListView.builder(
                  itemCount: messages.length,
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.only(
                          left: 14, right: 14, top: 10, bottom: 10),
                      child: Align(
                        alignment: (messages[index].messageType == "receiver"
                            ? Alignment.topLeft
                            : Alignment.topRight),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: (messages[index].messageType == "receiver"
                                ? Colors.grey.shade200
                                : DesignConfig.middleBlue),
                          ),
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            messages[index].messageContent,
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    padding:
                        const EdgeInsets.only(left: 10, bottom: 10, top: 10),
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    height: 80,
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: DesignConfig.buttonColorBlue,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Write message...",
                                hintStyle: TextStyle(color: Colors.black54),
                                border: InputBorder.none),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        FloatingActionButton(
                          onPressed: () {},
                          child: const Icon(
                            Icons.send,
                            color: Colors.white,
                            size: 18,
                          ),
                          backgroundColor: DesignConfig.buttonColorBlue,
                          elevation: 0,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }
}

class ChatMessage {
  String messageContent;
  String messageType;

  ChatMessage({required this.messageContent, required this.messageType});
}
