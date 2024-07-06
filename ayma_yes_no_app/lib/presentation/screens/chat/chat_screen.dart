import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:iniciales_yes_no_app/presentation/widgets/chat/my_message.dart';
import 'package:iniciales_yes_no_app/presentation/widgets/chat/her_message.dart';
import 'package:iniciales_yes_no_app/presentation/widgets/shared/message_field_box.dart';
import 'package:iniciales_yes_no_app/presentation/providers/chat_provider.dart';
import 'package:iniciales_yes_no_app/domain/entities/message.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTw5x-g9mF5i3KnYSUOgnRw9YakqFqUro2EA&s',
            ),
          ),
        ),
        title: const Text('Usuario'),
        centerTitle: false,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: chatProvider.messages.length,
              itemBuilder: (context, index) {
                final message = chatProvider.messages[index];
                return (message.fromWho == FromWho.her)
                    ? HerMessage()
                    : MyMessages();
              },
            ),
          ),
          const MessageFieldBox(),
        ],
      ),
    );
  }
}
