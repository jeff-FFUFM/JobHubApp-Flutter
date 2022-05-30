import 'package:jobs_app/models/direct_message_conversation.dart';

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
