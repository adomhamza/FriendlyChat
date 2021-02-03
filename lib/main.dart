import 'package:flutter/material.dart';

void main() => runApp(FriendlyChatApp());

class FriendlyChatApp extends StatelessWidget {
  const FriendlyChatApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FriendlyChat',
      home: ChatScreen(),
    );
  }
}

class ChatMessage extends StatelessWidget {
  const ChatMessage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _textController = TextEditingController();
  void _handleSubmitted(String text) {
    _textController.clear();
  }

  Widget _buildTextComposer() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 8.0,
      ),
      child: Row(
        children: [
          Flexible(
            child: TextField(
              controller: _textController,
              onSubmitted: _handleSubmitted,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Send a message',
                //border: InputBorder.none
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 4.0,
            ),
            child: IconButton(
              icon: Icon(
                Icons.send,
                color: Theme.of(context).accentColor,
              ),
              onPressed: () => _handleSubmitted(_textController.text),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FriendlyChat'),
      ),
      body: _buildTextComposer(),
    );
  }
}
