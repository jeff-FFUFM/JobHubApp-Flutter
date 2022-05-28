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

class MessageDetails {
  static List<People> personsList = [
    People(name: 'Agons', imageAddress: 'images/people/...'),
    People(name: 'Sarah', imageAddress: 'images/people/...'),
    People(name: 'Pia', imageAddress: 'images/people/...'),
    People(name: 'Mark', imageAddress: 'images/people/...'), //!
    People(name: 'Maine', imageAddress: 'images/people/...'),
    People(name: 'Liana', imageAddress: 'images/people/...'),
    People(name: 'Carlo', imageAddress: 'images/people/...'),
    People(name: 'Maco', imageAddress: 'images/people/...'),
    People(name: 'John Michael', imageAddress: 'images/people/...'),
    People(name: 'Chesca', imageAddress: 'images/people/...'),
    People(name: 'Alex', imageAddress: 'images/people/...'),
    People(name: 'Via', imageAddress: 'images/people/...'),
  ];

  static List<Message> messagesList = [
    Message(
      sender: 'Agon',
      messageSnippet:
          'Hi Jeffrey! We have received your application for the position...', //! Change later to variable from excel para latest
      unreadMessages: 3,
      messageImageAddress: 'images/message/pjnf.jpg',
    ),
    Message(
      sender: 'Sarah',
      messageSnippet:
          'Hey Jeff! I\'ve seen you post regarding climate change solutions', //! Change later to variable from excel para latest
      unreadMessages: 3,
      messageImageAddress: 'images/message/pjnf.jpg',
    ),
    Message(
      sender: 'Pia',
      messageSnippet:
          'Uy Jeff! Kumusta? Alam mo ba may chika ako sayo. Alam mo ba si...', //! Change later to variable from excel para latest
      unreadMessages: 1,
      messageImageAddress: 'images/message/pjnf.jpg',
    ),
    Message(
      sender: 'Mark',
      messageSnippet:
          'Hey Jeffrey! I\'ve received your query about the application for promotion ...', //! Change later to variable from excel para latest
      unreadMessages: 0,
      messageImageAddress: 'images/message/pjnf.jpg',
    ),
    Message(
      sender: 'Maine',
      messageSnippet:
          'Hi Jeff! Kumusta ka? Congrats pala! Pasensya na pero kakapalan ko na mukha ko ...', //! Change later to variable from excel para latest
      unreadMessages: 0,
      messageImageAddress: 'images/message/pjnf.jpg',
    ),
    Message(
      sender: 'Liana',
      messageSnippet:
          'Hi Jeffrey! We are happy to announce that you are qualified to receive ..', //! Change later to variable from excel para latest
      unreadMessages: 0,
      messageImageAddress: 'images/message/pjnf.jpg',
    ),
    Message(
      sender: 'Carlo',
      messageSnippet:
          'Hanggang sa dulo ng aking walang hanggan, hanggang maubos ang daan', //! Change later to variable from excel para latest
      unreadMessages: 0,
      messageImageAddress: 'images/message/pjnf.jpg',
    ),
    Message(
      sender: 'Maco',
      messageSnippet:
          'Hi Jeffy loves. I miss you like crazy.. Same place for our coffee date next week? ', //! Change later to variable from excel para latest
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
}
