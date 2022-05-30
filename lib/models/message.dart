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
