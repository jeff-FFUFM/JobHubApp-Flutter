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
