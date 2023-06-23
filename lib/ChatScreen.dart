import 'package:flutter/material.dart';
import 'package:chat/message.dart';
class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Message> _messages = <Message> [];
  final TextEditingController _controller = TextEditingController();
  void _handle(String text){
    _controller.clear();
    Message mes = Message(text: text);
    setState(() {
      _messages.insert(0, mes);
    });
  }
  Widget textComposer(){
    return IconTheme(
      data: const IconThemeData(
        color: Colors.blue
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Flexible(
            child: TextField(
            decoration: const InputDecoration.collapsed(hintText: "Send a Message"),
            controller: _controller,
            onSubmitted: _handle,
            ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                icon: const Icon(Icons.send),
                onPressed: () => _handle(_controller.text),
              ),
            )
          ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
     return Column(
       children: <Widget>[
         Flexible(
             child: ListView.builder(
               padding: const EdgeInsets.all(8.0),
               reverse: true,
               itemBuilder: (_, int index) => _messages[index],
               itemCount: _messages.length,
             )
         ),
         const Divider(height: 1.0,),
         Container(
           decoration: BoxDecoration(
             color: Theme.of(context).cardColor,
           ),
           child: textComposer(),
         )
       ],
     );
  }
}
