import 'package:flutter/material.dart';
import 'package:iniciales_yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messages = [
    Message(
      text: 'Hola',
      fromWho: FromWho.mine,
    ),
    Message(
      text: 'Mundo',
      fromWho: FromWho.mine,
    ),
    Message(
      text: 'Imagen',
      fromWho: FromWho.her,
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTw5x-g9mF5i3KnYSUOgnRw9YakqFqUro2EA&s',
    ),
  ];

  Future<void> sendMessage(String text) async {
    // TODO: Implementar método
  }
}
