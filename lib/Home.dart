import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hairfixermanager/Profile.dart';
import 'package:hairfixermanager/Request.dart';
import 'package:hairfixermanager/Signup.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  List a = ['asset/image2.png', 'asset/image3.png', 'asset/image4.png'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0XFFF5F5F5),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => navigate1(context),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 23,
                          ),
                          child: Image.asset(
                            'asset/pics.png',
                            scale: 3,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        // child: Positioned(bottom: 10,
                        //left: 15,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5, top: 12),
                          child: Image.asset(
                            'asset/zaryab.png',
                            scale: 3,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            " Hi,Hamza",
                            style: GoogleFonts.poppins(
                                fontSize: 22, color: Colors.redAccent),
                          ),
                          Text(
                            '  Welcome To Hair Salon',
                            style: GoogleFonts.poppins(
                                fontSize: 11, color: Color(0XFF3B5436)),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 270,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0XFFE5E5E5),
                      ),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                                hintText: "Search Shop Here",
                                icon: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Icon(Icons.search_rounded),
                                ),
                                border: InputBorder.none),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Image.asset(
                        'asset/file2.png',
                        scale: 2.8,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 526,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(4),
                        child: Column(
                          children: [
                            Card(
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Image.asset(a[index]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 230, top: 17),
                                    child: Image.asset(
                                      'asset/hamza.png',
                                      scale: 1.1,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12, top: 110),
                                    child: Text(
                                      'CROP Salon',
                                      style: GoogleFonts.poppins(
                                          fontSize: 23,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 150, left: 18),
                                    child: Text(
                                      'Hanif Manzil,Shop#2 Near Shah Abdul Latif RD\nLyari'
                                      ',Karachi,Karachi City,Sindh\nOpen . Closes 12AM        '
                                      '                                     (5.0)',
                                      style: GoogleFonts.poppins(
                                          color: Colors.black, fontSize: 10),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 177, left: 248),
                                    child: SmoothStarRating(
                                      color: Colors.grey,
                                      borderColor: Colors.grey,
                                      size: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              Row(
                children: [
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                    ),
                    child: Icon(Icons.home_filled),
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                    ),
                    child: InkWell(
                        onTap: () => navigate2(context),
                        child: Icon(Icons.app_registration)),
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                    ),
                    child: InkWell(
                        onTap: () => navigate(context),
                        child: Icon(Icons.person_outline_rounded)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void navigate2(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Request()));
  }

  void navigate(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
  }

  void navigate1(BuildContext context) {
    Navigator.pop(context, MaterialPageRoute(builder: (context) => Signup()));
  }
}
