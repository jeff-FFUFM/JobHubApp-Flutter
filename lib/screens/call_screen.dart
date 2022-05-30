import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobs_app/constants/call_screen_constants.dart';

class CallScreen extends StatefulWidget {
  final String senderName;
  final String senderImageAddress;
  final String myImageAdress;

  const CallScreen({
    Key? key,
    required this.senderName,
    required this.myImageAdress,
    required this.senderImageAddress,
  }) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  bool isScreenSwapped = false;
  bool isCameraOn = true;
  bool isSoundOn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        fit: StackFit.expand,
        children: [
          Container(
            //* default background
            color: Colors.black,
          ),
          Positioned.fill(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                isScreenSwapped
                    ? (isCameraOn ? widget.myImageAdress : Call.blackBackgroundImage)
                    : widget.senderImageAddress,
                scale: 1,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Center(
              child: Container(
                width: 80,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(
                      isScreenSwapped
                          ? widget.senderImageAddress
                          : (isCameraOn ? widget.myImageAdress : Call.blackBackgroundImage),
                    ),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 15,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.chevron_left,
                  size: 50,
                  color: Call.backIconColor,
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.261),
            child: Text(
              isScreenSwapped ? Call.screenTextTitle : widget.senderName,
              style: Call.titleTextStyle,
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.320),
            child: Text(
              Call.timeText,
              style: Call.timeTextStyle,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isScreenSwapped = !isScreenSwapped;
              });
            },
            child: Align(
              alignment: const Alignment(0.82, -0.67),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Call.rotateCameraButtonColor,
                child: SvgPicture.asset(
                  Call.rotateImageSvg,
                  width: 20,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isCameraOn = !isCameraOn;
              });
            },
            child: Align(
              alignment: const Alignment(0.535, 0.55),
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: isCameraOn
                    ? SvgPicture.asset(
                        Call.cameraOnImageSvg,
                        width: 22,
                      )
                    : Image.asset(
                        Call.cameraOffImage,
                        width: 19,
                      ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isSoundOn = !isSoundOn;
              });
            },
            child: Align(
              alignment: const Alignment(-0.535, 0.55),
              child: Container(
                decoration: Call.micBoxDecoration,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.transparent,
                  child: isSoundOn
                      ? SvgPicture.asset(
                          Call.micOnImageSvg,
                          width: 22,
                        )
                      : Image.asset(
                          Call.micOffImageSvg,
                          width: 13,
                        ),
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.55),
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Call.endCallColor,
              child: SvgPicture.asset(
                'images/end_call.svg',
                width: 22,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
