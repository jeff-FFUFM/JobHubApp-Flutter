import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CallScreen extends StatefulWidget {
  final String senderImageAddress;
  final String myImageAdress;

  const CallScreen({
    Key? key,
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
            color: Colors.black,
          ),
          Positioned.fill(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                isScreenSwapped
                    ? (isCameraOn ? widget.myImageAdress : 'images/black.png')
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
                          : (isCameraOn ? widget.myImageAdress : 'images/black.png'),
                    ),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.transparent,
                ),
              ),
            ),
          ),

          //! Replace later
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
                  color: Color(0xFF1A1D1E),
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.261),
            child: Text(
              isScreenSwapped ? 'My Screen' : 'Seol In Ah',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.7,
                shadows: [
                  // Shadow(
                  //     color: Colors.blue.shade700.withOpacity(0.5), offset: Offset(0, -0.5), blurRadius: 20),
                  Shadow(color: Colors.white38.withOpacity(0.7), offset: const Offset(0, 1), blurRadius: 20),
                  Shadow(color: Colors.black.withOpacity(0.7), offset: const Offset(0, 1.5), blurRadius: 20),
                ],
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.320),
            child: Text(
              '01:12',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.65,
                shadows: [
                  Shadow(
                      color: Colors.blue.shade700.withOpacity(0.5),
                      offset: const Offset(0, -0.5),
                      blurRadius: 3),
                  Shadow(color: Colors.white38.withOpacity(0.5), offset: const Offset(0, 1), blurRadius: 3),
                  Shadow(color: Colors.black.withOpacity(0.5), offset: const Offset(0, 1.5), blurRadius: 3),
                ],
              ),
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
                backgroundColor: const Color(0xFFFF4A6B),
                child: SvgPicture.asset(
                  'images/rotation.svg',
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
                        'images/camera.svg',
                        width: 22,
                      )
                    : Image.asset(
                        'images/camera_off.png',
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
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30), border: Border.all(color: Colors.white)),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.transparent,
                  child: isSoundOn
                      ? SvgPicture.asset(
                          'images/mic.svg',
                          width: 22,
                        )
                      : Image.asset(
                          'images/mic_mute1.png',
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
              backgroundColor: const Color(0xFFFF4141),
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
