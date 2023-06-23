import 'package:flutter/material.dart';
const String _name = "Aditya";
class Message extends StatelessWidget {
  final String text;
  const Message({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              child: Text(_name[0]),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(_name, style: TextStyle(color: Colors.white)),
              Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: Text(text, style: const TextStyle(color: Colors.white),),
              )
            ],
          )
        ],
      ),
    );
  }
}
