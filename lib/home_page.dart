import 'package:chat_app_ai/message.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Message> _messages = [
    Message(text: "Hi", isUser: true),
    Message(text: "Hello, what's up?", isUser: false),
    Message(text: "Great and you ?", isUser: true),
    Message(text: "I'm excellent", isUser: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: _messages.length,
            itemBuilder: (context, index) {
              final message = _messages[index];
              return ListTile(
                title: Text(message.text),
              );
            }));
  }
}
