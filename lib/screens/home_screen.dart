import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobs_app/constants/job_post_samples.dart';
import 'package:jobs_app/page_transitions/custom_page_route.dart';
import 'package:jobs_app/widgets/bottom_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:jobs_app/state_files/page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  int pageNumber = 0;
  late final TextEditingController _search;

  @override
  void initState() {
    _search = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _search.dispose();
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18, left: 20.79, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('images/menu.svg'),
                    Image.asset(
                      'images/jeff.png',
                      scale: 7.5,
                      filterQuality: FilterQuality.high,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 266,
                      height: 51.76,
                      padding: EdgeInsets.only(left: 18),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        autofocus: false,
                        decoration: InputDecoration(
                          hintText: 'Search here...',
                          border: InputBorder.none,
                        ),
                        onTap: () {
                          FocusScopeNode currentFocus = FocusScope.of(context);

                          if (!currentFocus.hasPrimaryFocus) {
                            currentFocus.unfocus();
                          }
                        },
                      ),
                    ),
                    SvgPicture.asset('images/search.svg'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.65, left: 20.79, right: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Jobs',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'PoppinsSemiBold',
                      ),
                    ),
                    Text('Show All'),
                  ],
                ),
              ),
              PopularJobsWidget(), //Horizontal
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 20.79, right: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Recent Posts'),
                    Text('Show All'),
                  ],
                ),
              ),
              Container(
                height: 220,
                padding: EdgeInsets.only(left: 20.79, right: 22),
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final jposts = Jobs().getRecentJobPosts[index];
                    return Container(
                      alignment: Alignment.center,
                      height: 75,
                      width: 330,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(1, 64, 59, 75), offset: Offset(-10, 0), blurRadius: 3),
                          BoxShadow(
                              color: Color.fromARGB(1, 64, 59, 75), offset: Offset(0, 10), blurRadius: 3),
                          BoxShadow(
                              color: Color.fromARGB(1, 44, 30, 75), offset: Offset(0, -35), blurRadius: 3),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 13.5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                jposts.imageAddress,
                                fit: BoxFit.contain,
                                scale: 5.2,
                              ),
                            ),
                          ), //!edit
                          SizedBox(width: 15),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                jposts.companyName,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'PoppinsSemiBold',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text('Full Time'),
                            ],
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Text(jposts.salary),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: 3, //!
                ),
              ),
              Expanded(
                flex: 10,
                child: Container(),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 30),
                child: BottomNavBar(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PopularJobsWidget extends StatelessWidget {
  const PopularJobsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 152.78,
      child: ListView.separated(
        itemCount: PopularJobs().popularJobPosts.length,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final jposts = PopularJobs().getPopularJobPosts;
          return Container(
            width: 270.29,
            padding: EdgeInsets.only(left: 20, right: 10, top: 20, bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Color(0x09403B4B), offset: Offset(0.1, 0.1), blurRadius: 0.1),
                BoxShadow(color: Color(0x09403B4B), offset: Offset(0.1, -0.1), blurRadius: 0.1),
                BoxShadow(color: Color(0x09403B4B), offset: Offset(0, -0.2), blurRadius: 0.1),
              ],
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 45,
                      padding: EdgeInsets.only(
                        bottom: 1,
                        right: 10,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: Image.asset(
                          jposts[index].imageAddress,
                          scale: 8,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5, bottom: 9.5),
                      child: Text(
                        jposts[index].companyName,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF6A6A6A),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5, bottom: 6.5),
                      child: Text(
                        jposts[index].jobTitle,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.42,
                          color: Color(0xFF151313),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Text(
                            jposts[index].salary,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF151313),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            jposts[index].location,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF6A6A6A),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40.5),
                    child: Icon(
                      Icons.favorite,
                      color: Color(0xFFFF0000),
                      size: 19,
                    ),
                  ),
                )
              ],
            ),
          );
        },
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return Container(
            width: 14,
          );
        },
      ),
    );
  }
}
