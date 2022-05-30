import 'package:flutter/material.dart';
import 'package:jobs_app/models/message.dart';

class MessageDetails extends ChangeNotifier {
  List<Message> messagesList = [
    Message(
      sender: 'Seol In Ah',
      messageSnippet: 'Hi Jeffrey! We have processed your application ...',
      unreadMessages: 3,
      messageImageAddress: 'images/message/seol.jpg',
    ),
    Message(
      sender: 'Sarah',
      messageSnippet: 'Hey Jeff! I\'ve seen you post regarding climate change solutions',
      unreadMessages: 3,
      messageImageAddress: 'images/message/sarah.jpg',
    ),
    Message(
      sender: 'Pia',
      messageSnippet: 'Uy Jeff! Kumusta? Alam mo ba may chika ako sayo. Alam mo ba si...',
      unreadMessages: 1,
      messageImageAddress: 'images/message/pia.jpg',
    ),
    Message(
      sender: 'Mark',
      messageSnippet: 'Hey Jeffrey! I\'ve received your query about the application for promotion ...',
      unreadMessages: 0,
      messageImageAddress: 'images/message/mark.jpg',
    ),
    Message(
      sender: 'Maine',
      messageSnippet: 'Hi Jeff! Kumusta ka? Congrats pala! Pasensya na pero kakapalan ko na mukha ko ...',
      unreadMessages: 0,
      messageImageAddress: 'images/message/maine.jpg',
    ),
    Message(
      sender: 'Liana',
      messageSnippet: 'Hi Jeffrey! We are happy to announce that you are qualified to receive ..',
      unreadMessages: 0,
      messageImageAddress: 'images/message/liana.jpg',
    ),
    Message(
      sender: 'Carlo',
      messageSnippet: 'Hanggang sa dulo ng aking walang hanggan, hanggang maubos ang daan',
      unreadMessages: 0,
      messageImageAddress: 'images/message/carlo.jpg',
    ),
    Message(
      sender: 'Maco',
      messageSnippet: "Hi Jeffy. Let's grab some coffee later at Tim's.",
      unreadMessages: 0,
      messageImageAddress: 'images/message/maco.jpg',
    ),
    Message(
      sender: 'Agon',
      messageSnippet: 'Hi Jeffrey! We have received your application for the position...',
      unreadMessages: 0,
      messageImageAddress: 'images/message/pjnf.jpg',
    ),
    Message(
      sender: 'Jonathan',
      messageSnippet: 'Hi Jeffrey! We have received your application for the position...',
      unreadMessages: 0,
      messageImageAddress: 'images/message/pjnf.jpg',
    ),
  ];

  String messageName(int index) {
    return messagesList[index].sender;
  }

  String messageSnippet(int index) {
    String message = messagesList[index].messageSnippet.split(' ').sublist(0, 6).join(' ');
    message = message.padRight(message.length + 3, '.');
    String message2 = messagesList[index].messageSnippet.substring(0, 30).padRight(33, '.');
    if (message.length > message2.length) {
      return message;
    } else {
      return message2;
    }
  }

  String noOfUnreadMessage(int index) {
    return messagesList[index].unreadMessages.toString();
  }

  String messageImageAddress(int index) {
    return messagesList[index].messageImageAddress;
  }

  void readMessage(String sender) {
    final int index = messagesList.indexWhere((element) => element.sender == sender);
    messagesList[index].unreadMessages = 0;
  }
}
