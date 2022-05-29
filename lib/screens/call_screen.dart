import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobs_app/state_files/page_data.dart';

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
                isScreenSwapped ? widget.myImageAdress : widget.senderImageAddress,
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
                    image: AssetImage(isScreenSwapped ? widget.senderImageAddress : widget.myImageAdress),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.orange,
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
            alignment: Alignment(0, 0.261),
            child: Text(
              'Seol In Ah',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.7,
                shadows: [
                  // Shadow(
                  //     color: Colors.blue.shade700.withOpacity(0.5), offset: Offset(0, -0.5), blurRadius: 20),
                  Shadow(color: Colors.white38.withOpacity(0.7), offset: Offset(0, 1), blurRadius: 20),
                  Shadow(color: Colors.black.withOpacity(0.7), offset: Offset(0, 1.5), blurRadius: 20),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.320),
            child: Text(
              '01:12',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.65,
                shadows: [
                  Shadow(
                      color: Colors.blue.shade700.withOpacity(0.5), offset: Offset(0, -0.5), blurRadius: 3),
                  Shadow(color: Colors.white38.withOpacity(0.5), offset: Offset(0, 1), blurRadius: 3),
                  Shadow(color: Colors.black.withOpacity(0.5), offset: Offset(0, 1.5), blurRadius: 3),
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
              alignment: Alignment(0.82, -0.67),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Color(0xFFFF4A6B),
                child: SvgPicture.asset(
                  'images/rotation.svg',
                  width: 20,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.535, 0.55),
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: SvgPicture.asset(
                'images/camera.svg',
                width: 22,
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.535, 0.55),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), border: Border.all(color: Colors.white)),
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.transparent,
                child: SvgPicture.asset(
                  'images/mic.svg',
                  width: 22,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.55),
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Color(0xFFFF4141),
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
