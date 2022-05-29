import 'dart:math';
import 'package:flutter/material.dart';
import 'package:jobs_app/widgets/back_button.dart';

class JobForm extends StatefulWidget {
  const JobForm({Key? key}) : super(key: key);

  @override
  State<JobForm> createState() => _JobFormState();
}

class _JobFormState extends State<JobForm> {
  late final TextEditingController _firstName;
  late final TextEditingController _lastName;
  late final TextEditingController _email;
  late final TextEditingController _message;
  String dropDownValue = 'Philippines';
  bool obscurePasswordField = true;

  @override
  void initState() {
    _firstName = TextEditingController();
    _lastName = TextEditingController();
    _email = TextEditingController();
    _message = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _firstName.dispose();
    _lastName.dispose();
    _message.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusManager.instance.primaryFocus?.unfocus,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: Color(0xFFFBFBFB),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: BackButtonWidget(onPressed: () {
                      Navigator.pop(context);
                    }),
                  ),
                  SizedBox(width: 95),
                  Text(
                    'Job Apply',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF1A1D1E),
                      shadows: [
                        Shadow(color: Colors.black, offset: Offset(0.12, 0.12), blurRadius: 0.2),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  SizedBox(width: 36),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: 150,
                    child: Text(
                      'First Name',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF6A6A6A),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Last Name',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF6A6A6A),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Color(0xFFE2E2E2),
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      controller: _firstName,
                      decoration: InputDecoration(
                        hintText: 'Jeffrey',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF6A6A6A),
                        ),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF1A1D1E),
                      ),
                      onTap: () {
                        FocusScopeNode currentFocus = FocusScope.of(context);

                        if (!currentFocus.hasPrimaryFocus) {
                          currentFocus.unfocus();
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 150,
                    padding: EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Color(0xFFE2E2E2),
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      controller: _lastName,
                      decoration: InputDecoration(
                        hintText: 'Palcone',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF6A6A6A),
                        ),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF1A1D1E),
                      ),
                      onTap: () {
                        FocusScopeNode currentFocus = FocusScope.of(context);

                        if (!currentFocus.hasPrimaryFocus) {
                          currentFocus.unfocus();
                        }
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 36),
                child: Text(
                  'Your Email',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF6A6A6A),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                width: 320,
                padding: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xFFE2E2E2),
                    width: 0.5,
                  ),
                ),
                child: TextField(
                  controller: _email,
                  decoration: InputDecoration(
                    hintText: 'jeffreypalcone@yahoo.com',
                    hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF6A6A6A),
                    ),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF1A1D1E),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  onTap: () {
                    FocusScopeNode currentFocus = FocusScope.of(context);

                    if (!currentFocus.hasPrimaryFocus) {
                      currentFocus.unfocus();
                    }
                  },
                ),
              ),
              SizedBox(height: 15),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 36),
                child: Text(
                  'Country',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF6A6A6A),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                margin: EdgeInsets.symmetric(horizontal: 36),
                width: MediaQuery.of(context).size.width * 0.95,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xFFE2E2E2),
                    width: 0.5,
                  ),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: dropDownValue,
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 135.0),
                      child: Transform.rotate(
                          angle: -pi / 2,
                          child: Icon(
                            Icons.chevron_left,
                          )),
                    ),
                    items: <String>[
                      'Philippines',
                      'USA',
                      'South Korea',
                      'Vietnam',
                      'Japan',
                      'China',
                      'Germany'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.blue,
                              radius: 13,
                            ),
                            SizedBox(width: 10),
                            Text(
                              value,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF6A6A6A),
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropDownValue = newValue!;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 36),
                child: Text(
                  'Message',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF6A6A6A),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                width: 320,
                height: 116,
                padding: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xFFE2E2E2),
                    width: 0.5,
                  ),
                ),
                child: TextField(
                  controller: _message,
                  decoration: InputDecoration(
                    hintText: 'Input your message here.',
                    hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF6A6A6A),
                    ),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF1A1D1E),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  onTap: () {
                    FocusScopeNode currentFocus = FocusScope.of(context);

                    if (!currentFocus.hasPrimaryFocus) {
                      currentFocus.unfocus();
                    }
                  },
                ),
              ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 36),
                child: Text(
                  'CV',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF6A6A6A),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 320,
                height: 70,
                padding: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xFFE2E2E2),
                    width: 0.5,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Upload Here',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF6A6A6A),
                      ),
                    ),
                    Icon(
                      Icons.insert_drive_file_rounded,
                      color: Color(0xFF6A6A6A),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 320,
                height: 54,
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Color(0xFF4CA6A8),
                  border: Border.all(
                    color: Color(0xFFE2E2E2),
                    width: 0.5,
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Application Status'),
                            content: const Text(
                              'Application submitted successfully! Please wait while the HR processes your application. Good luck!',
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.pop(context);
                                },
                                child: const Text('OK'),
                              )
                            ],
                          );
                        });
                  },
                  child: Text(
                    'Apply Now',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.5,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
