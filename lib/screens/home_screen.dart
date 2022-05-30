import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobs_app/state_files/job_post_samples.dart';
import 'package:jobs_app/models/home_screen_tab.dart';
import 'package:jobs_app/widgets/bottom_nav_bar.dart';
import 'package:jobs_app/widgets/jobs_bottom_sheet.dart';
import 'package:jobs_app/constants/home_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  int pageNumber = 0;
  late final TextEditingController _search;

  void toApplyPage() {
    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute(builder: (context) => const JobForm()));
  }

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
          color: const Color(0xFFFBFBFB),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18, left: 20.79, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, routeToMenuScreen);
                        await Future.delayed(
                          const Duration(milliseconds: 100),
                        );
                      },
                      child: SvgPicture.asset(Home.menuImageSvg),
                    ),
                    Image.asset(
                      Home.userImage,
                      scale: 7.5,
                      filterQuality: FilterQuality.high,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6773,
                      height: MediaQuery.of(context).size.height * 0.0660,
                      padding: const EdgeInsets.only(left: 18),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(color: Color(0xFFDBDBDB), offset: Offset(0.12, 0.12), blurRadius: 0.2),
                        ],
                      ),
                      child: TextField(
                        autofocus: false,
                        decoration: const InputDecoration(
                          hintText: Home.searchTextField,
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
                    SvgPicture.asset(Home.searchImageSvg),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.65, left: 20.79, right: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      Home.title1,
                      style: Home.titleTextStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: GestureDetector(
                        onTap: () {},
                        child: const Text(
                          Home.showAllPopularButton,
                          style: Home.showAllButtonTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.20,
                child: ListView.separated(
                  itemCount: PopularJobs().popularJobsLength,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    final jposts = PopularJobs().getPopularJobPosts[index];
                    MyTab myTab = MyTab.DESCRIPTION;

                    return GestureDetector(
                      onTap: () {
                        bottomSheetWidget(context, jposts, myTab, toApplyPage);
                      },
                      child: Container(
                        width: 270.29,
                        padding: const EdgeInsets.only(left: 20, right: 10, top: 20, bottom: 20),
                        decoration: Home.popularJobsDecoration,
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 45,
                                  padding: const EdgeInsets.only(
                                    bottom: 1,
                                    right: 10,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(14),
                                    child: Image.asset(
                                      jposts.imageAddress,
                                      scale: 8,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5, bottom: 9.5),
                                  child: Text(
                                    jposts.companyName,
                                    style: Home.jpostsCompanyNameTextStyle,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5, bottom: 6.5),
                                  child: Text(
                                    jposts.jobTitle,
                                    style: Home.jpostsTitleTextStyle,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Row(
                                    children: [
                                      Text(
                                        jposts.salary,
                                        style: Home.jpostsSalaryTextStyle,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        jposts.location,
                                        style: Home.jpostsLocationTextStyle,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.only(left: 40.5),
                                child: Icon(
                                  Icons.favorite,
                                  color: Color(0xFFFF0000),
                                  size: 19,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 14,
                    );
                  },
                ),
              ), //Horizontal
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20.79, right: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      Home.title2,
                      style: Home.titleTextStyle,
                    ),
                    Text(
                      Home.showAllPopularButton,
                      style: Home.showAllButtonTextStyle,
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.2816,
                padding: const EdgeInsets.symmetric(horizontal: 20.79),
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(bottom: 0),
                  itemBuilder: (context, index) {
                    final rjposts = Jobs().getRecentJobPosts[index];
                    MyTab myTab = MyTab.DESCRIPTION;
                    return GestureDetector(
                      onTap: () {
                        bottomSheetWidget(context, rjposts, myTab, toApplyPage);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 0.0960,
                        width: MediaQuery.of(context).size.width * 0.8402,
                        decoration: Home.recentPostsDecoration,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 13.5),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  rjposts.imageAddress,
                                  fit: BoxFit.contain,
                                  scale: 5.2,
                                ),
                              ),
                            ), //!edit
                            const SizedBox(width: 15),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  rjposts.jobTitle,
                                  style: Home.rjpostsTitleTextStyle,
                                ),
                                Text(
                                  rjposts.jobType,
                                  style: Home.rjpostsFullTimeTextStyle,
                                ),
                              ],
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 15.0),
                              child: Text(
                                rjposts.salary,
                                style: Home.rjpostsFullTimeTextStyle,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: Jobs().recentJobPosts.length,
                ),
              ),
              const Expanded(
                flex: 12,
                child: SizedBox(),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: BottomNavBar(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
