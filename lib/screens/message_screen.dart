import 'package:flutter/material.dart';
import 'package:jobs_app/widgets/bottom_nav_bar.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: IconButton(
                  onPressed: () async {
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Future.delayed(
                      Duration(milliseconds: 300),
                    );
                    await Navigator.pushNamed(context, '/Home');
                  },
                  icon: Icon(
                    Icons.chevron_left,
                    size: 50,
                  ),
                ),
              ),
              Text(
                'Messages',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Icon(
                  Icons.search,
                  size: 40,
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.center,
            height: 500,
            width: double.infinity,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 16,
                            child: Container(color: Colors.red),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Name ${index + 1}'),
                              Text('${index + 1}Sino ba kasi yung kausap mo kani..'),
                            ],
                          ),
                        ],
                      ),
                      CircleAvatar(
                        radius: 10,
                        child: Text(
                          '2',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                        backgroundColor: Color(0xFF4CA6A8),
                      ),
                    ],
                  ),
                );
              },
              itemCount: 100,
            ),
          ),
          Spacer(),
          Padding(padding: EdgeInsets.only(bottom: 30), child: BottomNavBar()),
        ],
      ),
    );
  }
}
