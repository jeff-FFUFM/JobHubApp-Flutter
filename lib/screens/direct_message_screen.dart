import 'package:flutter/material.dart';
import 'package:jobs_app/models/message.dart';

class DirectMessageScreen extends StatefulWidget {
  final Message message;
  const DirectMessageScreen({
    Key? key,
    required this.message,
  }) : super(key: key);

  Message get userData {
    return message;
  }

  @override
  State<DirectMessageScreen> createState() => _DirectMessageScreenState();
}

class _DirectMessageScreenState extends State<DirectMessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          color: Colors.blueGrey,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Column(
              children: [
                Text(widget.message.sender),
                Text(widget.message.messageSnippet),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
