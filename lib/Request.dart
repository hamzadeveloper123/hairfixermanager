import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hairfixermanager/Detail1.dart';
import 'package:hairfixermanager/Detail2.dart';
import 'package:hairfixermanager/Details.dart';
import 'package:hairfixermanager/Profile.dart';

import 'Home.dart';

class Request extends StatefulWidget {
  const Request({Key? key}) : super(key: key);

  @override
  _RequestState createState() => _RequestState();
}

class _RequestState extends State<Request> {
  int _selectedPage = 0;
  late PageController _pageController;

  void _changePage(int pageNum) {
    setState(() {
      _selectedPage = pageNum;
      _pageController.animateToPage(pageNum,
          duration: Duration(microseconds: 500),
          curve: Curves.fastLinearToSlowEaseIn);
    });
  }

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0XFFE5E5E5),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18, top: 22),
                    child: Image.asset(
                      'asset/pics.png',
                      scale: 2.7,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'REQUESTS ',
                          style: GoogleFonts.poppins(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  width: double.infinity,
                  height: 50,
                  color: Colors.redAccent,
                ),
              ),
              SizedBox(
                height: 585,
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 19),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: TabButton(
                                  text: 'Pending',
                                  pageNumber: 0,
                                  selectedPage: _selectedPage,
                                  onPressed: () {
                                    _changePage(0);
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: TabButton(
                                  text: 'Accepted',
                                  pageNumber: 1,
                                  selectedPage: _selectedPage,
                                  onPressed: () {
                                    _changePage(1);
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: TabButton(
                                  text: 'Denied',
                                  pageNumber: 2,
                                  selectedPage: _selectedPage,
                                  onPressed: () {
                                    _changePage(2);
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        child: PageView(
                      controller: _pageController,
                      children: [
                        Container(
                          child: Center(
                            child: ListView.builder(
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () => navigate6(context),
                                      child: Container(
                                        height: 120,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: Color(0XFFF8F8F8),
                                            borderRadius:
                                                BorderRadius.circular(18)),
                                        margin: EdgeInsets.all(1),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 12, left: 58),
                                              child: Text(
                                                'Shop Registration',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 12),
                                                  child: Image.asset(
                                                    'asset/file.png',
                                                    scale: 6,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 18),
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                        'Hamza Haider has requested to create\n'
                                                        'his Shop...........',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 12),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 59),
                                              child: Text(
                                                'Name:Crop Salon.......................'
                                                '                       01 Nov,2021',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          child: ListView.builder(
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () => navigate1(context),
                                    child: Container(
                                      height: 120,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          color: Color(0XFFF8F8F8),
                                          borderRadius:
                                              BorderRadius.circular(13)),
                                      margin: EdgeInsets.all(1),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 12, left: 55),
                                            child: Text(
                                              'Crop Salon',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 12),
                                                child: Image.asset(
                                                  'asset/desk.png',
                                                  scale: 3,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 18),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      'Approved By"Admin name"....',
                                                      style:
                                                          GoogleFonts.poppins(
                                                              fontSize: 12),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 59),
                                            child: Text(
                                              'Detail here............................\n........................'
                                              '....................................              '
                                              '                       01 Nov,2021',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 22),
                                                child: Column(
                                                  children: [],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                        Container(
                          width: double.infinity,
                          child: ListView.builder(
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () => navigate5(context),
                                    child: Container(
                                      height: 120,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          color: Color(0XFFF8F8F8),
                                          borderRadius:
                                              BorderRadius.circular(13)),
                                      margin: EdgeInsets.all(1),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 12, left: 55),
                                            child: Text(
                                              'Crop Salon',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 12),
                                                child: Image.asset(
                                                  'asset/desk1.png',
                                                  scale: 3,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 18),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      'Denied By"Admin name"....',
                                                      style:
                                                          GoogleFonts.poppins(
                                                              fontSize: 12),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 59),
                                            child: Text(
                                              'Detail here............................\n........................'
                                              '....................................              '
                                              '                       01 Nov,2021',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 22),
                                                child: Column(
                                                  children: [],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ],
                    )),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                    ),
                    child: InkWell(
                        onTap: () => navigate2(context),
                        child: Icon(Icons.home_filled)),
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                    ),
                    child: InkWell(
                        // onTap: ()=>navigate2(context),
                        child: Icon(Icons.app_registration)),
                  ),
                  Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                        color: Colors.white54,
                      ),
                      child: InkWell(
                          onTap: () => navigate3(context),
                          child: Icon(Icons.person_outline_rounded))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void navigate2(BuildContext context) {
    Navigator.pop(context, MaterialPageRoute(builder: (context) => Home()));
  }

  void navigate3(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
  }

  void navigate6(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Details()));
  }

  void navigate1(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Detail1()));
  }

  void navigate5(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Detail2()));
  }
}

class TabButton extends StatelessWidget {
  final String text;
  final int selectedPage;
  final int pageNumber;
  final VoidCallback onPressed;

  TabButton(
      {required this.text,
      required this.selectedPage,
      required this.pageNumber,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        // width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color:
              selectedPage == pageNumber ? Colors.black38 : Color(0XFF3B5436),
          borderRadius: BorderRadius.circular(0),
        ),
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
        child: Text(
          text ?? 'Tab Button',
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500, color: Colors.white, fontSize: 15),
          //TextStyle(
          //  color: selectedPage == pageNumber ? Colors.white : Colors.white),
        ),
      ),
    );
  }
}
