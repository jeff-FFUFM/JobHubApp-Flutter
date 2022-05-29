import 'package:flutter/material.dart';
import 'package:jobs_app/models/home_screen_tab.dart';
import 'package:jobs_app/models/job_post.dart';

Future<dynamic> BottomSheetWidget(
    BuildContext context, JobPost jposts, MyTab myTab, void Function() applyNowOnTap) {
  return showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return StatefulBuilder(
        builder: (context, StateSetter setState1) => Container(
          height: MediaQuery.of(context).size.height * 0.88,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(52),
              topRight: Radius.circular(52),
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 32),
                width: 80,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  jposts.imageAddress,
                  width: 63,
                  height: 63,
                ),
              ),
              SizedBox(height: 5),
              Text(
                jposts.jobTitle,
                style: TextStyle(
                  color: Color(0xFF1A1D1E),
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  letterSpacing: 0.51,
                  shadows: [
                    Shadow(color: Colors.black, offset: Offset(0.05, 0.05), blurRadius: 0.4),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    jposts.companyName,
                    style: TextStyle(
                      color: Color(0xFF1A1D1E),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      shadows: [
                        Shadow(color: Colors.black, offset: Offset(0.2, 0.2), blurRadius: 0.2),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    color: Colors.black,
                    width: 14,
                    height: 1.5,
                  ),
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.grey,
                    size: 20,
                  ),
                  Text(
                    jposts.location,
                    style: TextStyle(
                      color: Color(0xFF6A6A6A),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      shadows: [
                        Shadow(color: Colors.grey, offset: Offset(0.2, 0.2), blurRadius: 0.2),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 23,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.access_time,
                        size: 20.5,
                        color: Color(0xFF6A6A6A),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Full Time',
                        style: TextStyle(
                          color: Color(0xFF6A6A6A),
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          shadows: [
                            Shadow(color: Colors.grey, offset: Offset(0.2, 0.2), blurRadius: 0.2),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 72),
                  Text(
                    jposts.salary,
                    style: TextStyle(
                      color: Color(0xFF6A6A6A),
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      shadows: [
                        Shadow(color: Colors.grey, offset: Offset(0.2, 0.2), blurRadius: 0.2),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 23,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState1(() {
                        myTab = MyTab.DESCRIPTION;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 19, vertical: 13),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: myTab == MyTab.DESCRIPTION ? Color(0xFF4CA6A8) : Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        'Description',
                        style: TextStyle(
                          color: myTab == MyTab.DESCRIPTION ? Colors.white : Color(0xFF6A6A6A),
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          shadows: [
                            Shadow(color: Colors.grey, offset: Offset(0.2, 0.2), blurRadius: 0.2),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState1(() {
                        myTab = MyTab.COMPANY;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 19, vertical: 13),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: myTab == MyTab.COMPANY ? Color(0xFF4CA6A8) : Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        'Company',
                        style: TextStyle(
                          color: myTab == MyTab.COMPANY ? Colors.white : Color(0xFF6A6A6A), //!dynamic
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          shadows: [
                            Shadow(color: Colors.grey, offset: Offset(0.2, 0.2), blurRadius: 0.2),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState1(() {
                        myTab = MyTab.REVIEWS;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 19, vertical: 13),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: myTab == MyTab.REVIEWS ? Color(0xFF4CA6A8) : Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        'Reviews',
                        style: TextStyle(
                          color: myTab == MyTab.REVIEWS ? Colors.white : Color(0xFF6A6A6A),
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          shadows: [
                            Shadow(color: Colors.grey, offset: Offset(0.2, 0.2), blurRadius: 0.2),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 18, top: 5),
                  child: Text(
                    myTab == MyTab.DESCRIPTION
                        ? 'Qualifications: '
                        : (myTab == MyTab.COMPANY ? 'Company Overview' : 'Reviews'),
                    style: TextStyle(
                      color: Color(0xFF1A1D1E),
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      shadows: [
                        Shadow(color: Colors.black, offset: Offset(0.2, 0.2), blurRadius: 0.2),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    color: Color(0xFFFBFBFB),
                    height: MediaQuery.of(context).size.height * 0.29,
                    width: MediaQuery.of(context).size.height * 0.55,
                    child: ListView.builder(
                      padding: EdgeInsets.only(bottom: 0),
                      scrollDirection: Axis.vertical,
                      itemCount: myTab == MyTab.DESCRIPTION
                          ? jposts.jobDescription.length
                          : (myTab == MyTab.COMPANY ? jposts.companyDetails.length : jposts.reviews.length),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(left: 20, right: 20, top: 7, bottom: 7),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: CircleAvatar(
                                  radius: 2,
                                  backgroundColor: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: Text(
                                  myTab == MyTab.DESCRIPTION
                                      ? jposts.jobDescription[index]
                                      : (myTab == MyTab.COMPANY
                                          ? jposts.companyDetails[index]
                                          : jposts.reviews[index]),
                                  style: TextStyle(
                                    color: Color(0xFF6A6A6A),
                                    fontSize: 13.5,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  softWrap: true,
                                  overflow: TextOverflow.clip,
                                  maxLines: 15,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 260,
                        height: 54,
                        decoration: BoxDecoration(
                          color: Color(0xFF4CA6A8),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: GestureDetector(
                          onTap: applyNowOnTap,
                          child: Text(
                            'Apply Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFF4CA6A8),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset('images/chat1.png'),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
