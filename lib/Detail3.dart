import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hairfixermanager/Detail4.dart';
import 'package:hairfixermanager/Detail5.dart';
import 'package:hairfixermanager/Detail6.dart';
import 'package:hairfixermanager/Detail7.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Detail3 extends StatefulWidget {
  const Detail3({Key? key}) : super(key: key);

  @override
  _Detail3State createState() => _Detail3State();
}

class _Detail3State extends State<Detail3> {
  @override
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
                    child: InkWell(
                      //  onTap: () => navigate(context),
                      child: Image.asset(
                        'asset/pics.png',
                        scale: 2.7,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  color: Colors.redAccent,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Men`s Beauty Salon ',
                          style: GoogleFonts.poppins(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 280,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: Image.asset('asset/salon.png'),
                  ),
                  Positioned(
                    top: 195,
                    left: 60,
                    child: Container(
                      width: 240,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0XFFF5F5F5),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 14, left: 24),
                            child: Text(
                              '(5.0)',
                              style: GoogleFonts.poppins(
                                  fontSize: 13, fontWeight: FontWeight.w300),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 14, left: 3),
                            child: SmoothStarRating(
                              color: Colors.amber,
                              borderColor: Colors.amber,
                              size: 18,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 14, left: 4),
                            child: Text(
                              '2 Reviews',
                              style: GoogleFonts.poppins(
                                  fontSize: 12, fontWeight: FontWeight.w300),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 130,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0XFFF8F8F8),
                    borderRadius: BorderRadius.circular(13)),
                margin: EdgeInsets.all(1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12, left: 15),
                      child: Text(
                        'Shop Keeper Details',
                        style: GoogleFonts.poppins(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: Column(
                        children: [
                          Text(
                            'Name:                Hamza Haider',
                            style: GoogleFonts.poppins(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 5),
                      child: Text(
                        'Contact:              +923172141551',
                        style: GoogleFonts.poppins(
                            fontSize: 11, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 5),
                      child: Text(
                        'Email:                  hamzahaider049@gmail.com',
                        style: GoogleFonts.poppins(
                            fontSize: 11, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 160,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0XFFF8F8F8),
                      borderRadius: BorderRadius.circular(13)),
                  margin: EdgeInsets.all(1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12, left: 15),
                        child: Text(
                          'Shop Details',
                          style: GoogleFonts.poppins(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 10),
                        child: Column(
                          children: [
                            Text(
                              'Shop Name:        Men`s beauty Salon',
                              style: GoogleFonts.poppins(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 5),
                        child: Text(
                          'Shop Address:      Hanif Manzil Shop # 02 Near Shah Abdul latif\n'
                          '                                  Bhittai RD Lyari Karachi, Sindh',
                          style: GoogleFonts.poppins(
                              fontSize: 11, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 5),
                        child: Text(
                          'Contact:                  +923172141551',
                          style: GoogleFonts.poppins(
                              fontSize: 11, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 5),
                        child: Text(
                          'Shop Timings:         10AM TO 11PM',
                          style: GoogleFonts.poppins(
                              fontSize: 11, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: InkWell(
                        //onTap: () => navigate2(context),
                        child: Icon(Icons.person_outline_rounded)),
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: InkWell(
                        onTap: () => navigate2(context),
                        child: Icon(Icons.alternate_email_outlined)),
                  ),
                  Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: InkWell(
                          onTap: () => navigate3(context),
                          child: Icon(Icons.wallet_travel_sharp))),
                  Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: InkWell(
                          onTap: () => navigate7(context),
                          child: Icon(Icons.settings_applications_rounded))),
                  Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: InkWell(
                          onTap: () => navigate4(context),
                          child: Icon(Icons.replay_30_rounded))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void navigate2(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Detail4()));
  }

  void navigate3(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Detail5()));
  }

  void navigate4(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Detail6()));
  }

  void navigate7(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Detail7()));
  }
}
