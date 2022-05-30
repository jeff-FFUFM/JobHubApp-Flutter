import 'package:flutter/cupertino.dart';
import 'package:jobs_app/models/people.dart';

class Message {
  String sender;
  String messageSnippet;
  int unreadMessages;
  String messageImageAddress;

  Message({
    required this.sender,
    required this.messageSnippet,
    required this.unreadMessages,
    required this.messageImageAddress,
  });
}

class DirectMessageConversation {
  final dateDefault = DateTime(2022, 1, 5, 17, 30);
  String sender;
  String messages;
  int messageNumber;
  DateTime date = DateTime(2022, 1, 5, 17, 30);

  DirectMessageConversation({
    required this.sender,
    required this.messages,
    required this.messageNumber,
    required this.date,
  });
}

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

class DirectMessageDetails {
  List<DirectMessageConversation> convo1 = [
    DirectMessageConversation(
        sender: 'Jeffrey',
        messages: 'Hi In Ah! Any updates regarding my application?',
        messageNumber: 0,
        date: DateTime(2022, 4, 12, 16, 4, 30, 0)),
    DirectMessageConversation(
      sender: 'Seol In Ah',
      messages: 'Hi Jeffrey! Thank you for applying to our company Samsung Electromechanics Corp.',
      messageNumber: 1,
      date: DateTime(2022, 4, 12, 16, 5, 0, 0),
    ),
    DirectMessageConversation(
        sender: 'Seol In Ah',
        messages:
            'First, we sincerely thank you for the time you have invested in the selection process, and we would like to update you regarding your application for: Process Design Engineer.',
        messageNumber: 2,
        date: DateTime(2022, 4, 12, 16, 6, 0, 0)),
    DirectMessageConversation(
        sender: 'Seol In Ah',
        messages:
            'You will hear from us within the next 30 days. In case you don\'t receive an answer from us by then, please return to your candidate home and check to see if any communications or tasks were sent there.',
        messageNumber: 3,
        date: DateTime(2022, 4, 12, 16, 6, 30, 0)),
    DirectMessageConversation(
        sender: 'Jeffrey',
        messages:
            "Greetings In Ah! I would like to follow up on my application. It's been a few weeks and I haven't received any updates. \nKind Regards, \nJeffrey Palcone.",
        messageNumber: 4,
        date: DateTime(2022, 5, 15, 16, 8, 30, 0)),
    DirectMessageConversation(
      sender: 'Seol In Ah',
      messages:
          'Hi Jeffrey! We have processed your application. \nCongratulations! You have been accepted for the position Process Design Engineer. Further discussion regarding your responsibilities will be conducted later at 3:00 pm.',
      messageNumber: 5,
      date: DateTime(2022, 5, 15, 16, 9, 02, 0),
    ),
  ];

  void sendMessage(String message) {
    convo1.add(DirectMessageConversation(
        sender: 'Jeffrey', messages: message, messageNumber: convo1.length + 1, date: DateTime.now()));
  }
}
