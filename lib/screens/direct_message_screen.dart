import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
            color: const Color(0xFFFBFBFB),
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
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        color: Color(0xFF1A1D1E),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CallScreen(
                                    myImageAdress: 'images/people/jeff.gif',
                                    senderImageAddress: 'images/people/seol.png')));
                      },
                      iconSize: 30,
                      icon: const Icon(Icons.call),
                      color: const Color(0xFF200E32),
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
                    itemCount: widget.dm.agonJeffrey.length,
                    itemBuilder: (context, index) {
                      final messageAgonJeffrey = widget.dm.agonJeffrey.reversed.toList()[index];
                      final bool isUser = messageAgonJeffrey.sender == 'Jeffrey';

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
                                      ? const Color(0xFF4CA6A8).withOpacity(0.1)
                                      : const Color(0xFFFEFEFE),
                                  borderRadius: BorderRadius.circular(11),
                                ),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        messageAgonJeffrey.messages,
                                        overflow: TextOverflow.clip,
                                        style: const TextStyle(
                                          color: Color(0xFF1A1D1E),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          shadows: [
                                            Shadow(
                                                color: Colors.black,
                                                offset: Offset(0.12, 0.12),
                                                blurRadius: 0.12),
                                            Shadow(
                                                color: Colors.white38,
                                                offset: Offset(-0.1, -0.1),
                                                blurRadius: 0.05),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const Alignment(1, 0),
                                      child: Text(
                                        DateFormat.jm().format(messageAgonJeffrey.date).toString(),
                                        textAlign: TextAlign.end,
                                        style: const TextStyle(
                                          color: Color(0xFF002251),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300,
                                          shadows: [
                                            Shadow(
                                                color: Colors.black, offset: Offset(0.1, 0), blurRadius: 0.1),
                                            Shadow(
                                              color: Colors.black,
                                              offset: Offset(0, -0.1),
                                              blurRadius: 0.1,
                                            ),
                                          ],
                                        ),
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
                  padding: const EdgeInsets.only(left: 20, bottom: 60),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF4CA6A8),
                          radius: 24,
                          child: Icon(
                            Icons.add,
                            size: 26,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(right: 20, left: 12),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(11),
                              ),
                              width: 220,
                              child: TextField(
                                controller: _message,
                                keyboardType: TextInputType.text,
                                autofocus: false,
                                decoration: const InputDecoration(
                                  hintText: 'Type a message',
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF9093A3),
                                  ),
                                  border: InputBorder.none,
                                ),
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
                                //Todo: Method for adding message
                                setState(() {
                                  widget.dm.sendMessage(_message.text); //!Change later
                                });
                                print('MESSAGE: ${widget.dm.agonJeffrey.last.messages}');
                                _message.clear();
                                // FocusScope.of(context).unfocus();
                              },
                              child: SvgPicture.asset(
                                'images/send_button.svg',
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
