import 'package:flutter/material.dart';
import 'package:chat/ChatScreen.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Let's Chat"),
      ),
      body: const ChatScreen(),
      backgroundColor: Colors.black12,
    );
  }
}
