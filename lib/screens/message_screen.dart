import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:jobs_app/models/message.dart';
import 'package:jobs_app/screens/direct_message_screen.dart';
import 'package:jobs_app/state_files/page_data.dart';
import 'package:jobs_app/widgets/bottom_nav_bar.dart';
import 'package:provider/provider.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  final messagesList = MessageDetails().messagesList;
  @override
  Widget build(BuildContext context) {
    final messageManager = Provider.of<MessageDetails>(context);
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: IconButton(
                  onPressed: () async {
                    Navigator.pop(context);
                    Provider.of<PageData>(context, listen: false).moveMarkerTo('/Home');
                    Future.delayed(
                      const Duration(milliseconds: 300),
                    );
                    await Navigator.pushNamed(context, '/Home');
                  },
                  icon: const Icon(
                    Icons.chevron_left,
                    size: 50,
                  ),
                ),
              ),
              const Text(
                'Messages',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 18.0),
                child: Icon(
                  Icons.search,
                  size: 40,
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                alignment: Alignment.center,
                height: 560,
                width: 392,
                color: const Color(0xFFFBFBFB),
                padding: const EdgeInsets.only(top: 7),
                child: ListView.builder(
                  padding: const EdgeInsets.only(bottom: 0),
                  itemCount: MessageDetails().messagesList.length,
                  itemBuilder: (context, index) {
                    final messageAtIndex = messagesList[index];
                    return Slidable(
                      key: Key(messageAtIndex.sender),
                      closeOnScroll: true,
                      endActionPane: ActionPane(
                        extentRatio: 0.2,
                        motion: const BehindMotion(),
                        dismissible: DismissiblePane(
                          closeOnCancel: true,
                          onDismissed: () {
                            setState(() {
                              messagesList.removeAt(index);
                              //print('Messages Length: ${messagesList.length}');
                            });
                          },
                        ),
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: const EdgeInsets.only(top: 11, right: 35, bottom: 11, left: 10),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(13),
                                  bottomLeft: Radius.circular(13),
                                ),
                                color: Color(0xFFFF4141),
                              ),
                              child: GestureDetector(
                                //Todo: DELETE MESSAGE FROM LIST

                                onTap: () {
                                  setState(() {
                                    messagesList.removeAt(index);
                                    //print('Messages Length using Gesture: ${messagesList.length}');
                                  });
                                },
                                child: const Icon(Icons.delete_outline_rounded),
                              ),
                            ),
                          ),
                        ],
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DirectMessageScreen(message: MessageDetails().messagesList[index]),
                            ),
                          );
                          setState(() {
                            messageManager.readMessage(messageAtIndex.sender);
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 17),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Color(0xFFEBEBEB), offset: Offset(0, -0.05), blurRadius: 0.01)
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundImage: AssetImage(MessageDetails().messageImageAddress(index)),
                                  ),
                                  const SizedBox(
                                    width: 25,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        MessageDetails().messageName(index),
                                        style: const TextStyle(
                                          fontFamily: 'PoppinsSemiBold',
                                          fontSize: 16,
                                          color: Color(0xFF1A1D1E),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(MessageDetails().messageSnippet(index)),
                                    ],
                                  ),
                                ],
                              ),
                              messageManager.messagesList[index].unreadMessages == 0
                                  ? Container()
                                  : CircleAvatar(
                                      radius: 10,
                                      child: Text(
                                        MessageDetails().noOfUnreadMessage(index),
                                        style: const TextStyle(fontSize: 12, color: Colors.white),
                                      ),
                                      backgroundColor: const Color(0xFF4CA6A8),
                                    ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Positioned(
                left: 10,
                right: 10,
                top: 490,
                child: ClipRRect(
                  borderRadius: BorderRadius.zero,
                  child: Container(height: 100, color: Colors.white.withOpacity(0.6)),
                ),
              ),
            ],
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: BottomNavBar(),
          ),
        ],
      ),
    );
  }
}
