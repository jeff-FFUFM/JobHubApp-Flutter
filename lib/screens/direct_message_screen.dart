import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobs_app/constants/direct_message_constants.dart';
import 'package:jobs_app/models/direct_message_details.dart';
import 'package:jobs_app/models/message.dart';
import 'package:jobs_app/screens/call_screen.dart';
import 'package:jobs_app/state_files/page_data.dart';
import 'package:jobs_app/widgets/back_button.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class DirectMessageScreen extends StatefulWidget {
  final Message message;
  final DirectMessageDetails dm = DirectMessageDetails();

  DirectMessageScreen({
    Key? key,
    required this.message,
  }) : super(key: key);

  Message get userData {
    return message;
  }

  @override
  State<DirectMessageScreen> createState() => _DirectMessageScreenState();
}

class _DirectMessageScreenState extends State<DirectMessageScreen> {
  late final TextEditingController _message;
  double listViewHeight = 510;

  @override
  void initState() {
    _message = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _message.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus;
        setState(() {
          listViewHeight = 510;
          FocusScope.of(context).unfocus();
        });
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Container(
            color: DirectMessage.backgroundColor,
            child: Column(
              children: [
                const SizedBox(
                  height: 35,
                ),
                Row(
                  children: [
                    BackButtonWidget(
                      onPressed: () {
                        Navigator.pop(context);
                        Provider.of<PageData>(context, listen: false).moveMarkerTo('/Message');
                      },
                    ),
                    const Spacer(),
                    CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage(widget.message.messageImageAddress),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      widget.message.sender,
                      style: DirectMessage.senderTextStyle,
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CallScreen(
                              senderName: widget.message.sender,
                              myImageAdress: DirectMessage.myImageAddress,
                              senderImageAddress: DirectMessage.senderImageAddress,
                            ),
                          ),
                        );
                      },
                      iconSize: 30,
                      icon: const Icon(Icons.call),
                      color: DirectMessage.callButtonColor,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(top: 3),
                  height: listViewHeight,
                  child: ListView.separated(
                    reverse: true,
                    padding: const EdgeInsets.only(bottom: 0),
                    shrinkWrap: true,
                    itemCount: widget.dm.convo1.length,
                    itemBuilder: (context, index) {
                      //* Isa pa lang yung conversation na nagawa ko, set to dynamic pag may time
                      final convo1 = widget.dm.convo1.reversed.toList()[index];
                      final bool isUser = convo1.sender == 'Jeffrey';
                      // Todo: change user to dynamic "Jeffrey"
                      return Container(
                        alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(11),
                              child: Container(
                                width: 250,
                                margin: const EdgeInsets.symmetric(horizontal: 10),
                                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 11),
                                decoration: BoxDecoration(
                                  color: isUser
                                      ? DirectMessage.myContainerColor
                                      : DirectMessage.senderContainerColor,
                                  borderRadius: BorderRadius.circular(11),
                                ),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        convo1.messages,
                                        overflow: TextOverflow.clip,
                                        style: DirectMessage.messagesTextStyle,
                                      ),
                                    ),
                                    Align(
                                      alignment: const Alignment(1, 0),
                                      child: Text(
                                        DateFormat.jm().format(convo1.date).toString(),
                                        textAlign: TextAlign.end,
                                        style: DirectMessage.dateTextStyle,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    bottom: 60,
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: CircleAvatar(
                          backgroundColor: DirectMessage.addButtonColor,
                          radius: 24,
                          child: Icon(
                            Icons.add,
                            size: 26,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                right: 20,
                                left: 12,
                              ),
                              decoration: DirectMessage.textFieldBoxDecoration,
                              width: 220,
                              child: TextField(
                                controller: _message,
                                keyboardType: TextInputType.text,
                                autofocus: false,
                                decoration: DirectMessage.textFieldDecoration,
                                onTap: () {
                                  setState(() {
                                    listViewHeight = 285;
                                  });
                                },
                              ),
                            ),
                            const SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  widget.dm.sendMessage(_message.text);
                                });
                                _message.clear();
                              },
                              child: SvgPicture.asset(
                                DirectMessage.sendButtonImageSvg,
                                width: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
