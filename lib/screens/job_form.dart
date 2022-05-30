import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobs_app/models/countries.dart';
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
  List<Country> countryData = CountriesList.countries;

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
          color: const Color(0xFFFBFBFB),
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
                  const SizedBox(width: 95),
                  const Text(
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
              const SizedBox(height: 15),
              Row(
                children: [
                  const SizedBox(width: 36),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: 150,
                    child: const Text(
                      'First Name',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF6A6A6A),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'Last Name',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF6A6A6A),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 15),
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color(0xFFE2E2E2),
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      controller: _firstName,
                      decoration: const InputDecoration(
                        hintText: 'Jeffrey',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF6A6A6A),
                        ),
                        border: InputBorder.none,
                      ),
                      style: const TextStyle(
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
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 150,
                    padding: const EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color(0xFFE2E2E2),
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      controller: _lastName,
                      decoration: const InputDecoration(
                        hintText: 'Palcone',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF6A6A6A),
                        ),
                        border: InputBorder.none,
                      ),
                      style: const TextStyle(
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
              const SizedBox(height: 15),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 36),
                child: const Text(
                  'Your Email',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF6A6A6A),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                width: 320,
                padding: const EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xFFE2E2E2),
                    width: 0.5,
                  ),
                ),
                child: TextField(
                  controller: _email,
                  decoration: const InputDecoration(
                    hintText: 'jeffreypalcone@yahoo.com',
                    hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF6A6A6A),
                    ),
                    border: InputBorder.none,
                  ),
                  style: const TextStyle(
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
              const SizedBox(height: 15),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 36),
                child: const Text(
                  'Country',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF6A6A6A),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                margin: const EdgeInsets.symmetric(horizontal: 36),
                width: MediaQuery.of(context).size.width * 0.95,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xFFE2E2E2),
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
                          child: const Icon(
                            Icons.chevron_left,
                          )),
                    ),
                    items: countryData.map<DropdownMenuItem<String>>((Country country) {
                      return DropdownMenuItem<String>(
                        value: country.countryName,
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.transparent,
                              ),
                              child: Stack(
                                alignment: AlignmentDirectional.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: SvgPicture.asset(
                                      country.imageAddress,
                                      alignment: Alignment.center,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              country.countryName,
                              style: const TextStyle(
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
              const SizedBox(height: 15),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 36),
                child: const Text(
                  'Message',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF6A6A6A),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                width: 320,
                height: 116,
                padding: const EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xFFE2E2E2),
                    width: 0.5,
                  ),
                ),
                child: TextField(
                  controller: _message,
                  decoration: const InputDecoration(
                    hintText: 'Input your message here.',
                    hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF6A6A6A),
                    ),
                    border: InputBorder.none,
                  ),
                  style: const TextStyle(
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
              const SizedBox(height: 20),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 36),
                child: const Text(
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
                padding: const EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xFFE2E2E2),
                    width: 0.5,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
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
              const SizedBox(height: 20),
              Container(
                width: 320,
                height: 54,
                alignment: Alignment.center,
                padding: const EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: const Color(0xFF4CA6A8),
                  border: Border.all(
                    color: const Color(0xFFE2E2E2),
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
                  child: const Text(
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
