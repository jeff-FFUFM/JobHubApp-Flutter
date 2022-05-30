import 'package:flutter/material.dart';

class ApplicationsScreen extends StatelessWidget {
  const ApplicationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFFBFBFB),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    //* Default method for page transition
                    Navigator.pop(context);

                    Navigator.pushNamed(context, '/Menu');
                  },
                  icon: const Icon(
                    Icons.chevron_left,
                    size: 41,
                    color: Color(0xFF1A1D1E),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 9.5),
                  child: Text(
                    'Applications',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF1A1D1E),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 21.5),
              child: const Text(
                'Applications',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF1A1D1E),
                  shadows: [
                    Shadow(color: Colors.grey, offset: Offset(0.2, 0.2), blurRadius: 0.2),
                    Shadow(color: Colors.black, offset: Offset(0.2, 0.2), blurRadius: 0.2),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 300,
              child: ListView.builder(
                padding: const EdgeInsets.only(bottom: 0),
                itemCount: 2,
                itemBuilder: (context, index) => Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 80,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
