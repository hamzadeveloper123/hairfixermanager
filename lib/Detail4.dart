import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hairfixermanager/Detail3.dart';
import 'package:hairfixermanager/Detail5.dart';
import 'package:hairfixermanager/Detail6.dart';
import 'package:hairfixermanager/Detail7.dart';

class Detail4 extends StatefulWidget {
  const Detail4({Key? key}) : super(key: key);

  @override
  _Detail4State createState() => _Detail4State();
}

class _Detail4State extends State<Detail4> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0XFFF5F5F5),
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
                          'Earnings ',
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
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 32, top: 13),
                    child: Text(
                      'Today Earning',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Color(0XFF3B5436)),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color(0XFFE5E5E5)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 55, top: 16),
                    child: (Text(
                      '\$150',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.redAccent),
                    )),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 32, top: 13),
                    child: Text(
                      'Earnings in November',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Color(0XFF3B5436)),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color(0XFFE5E5E5)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 55, top: 16),
                    child: (Text(
                      '\$2104',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.redAccent),
                    )),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 32, top: 13),
                    child: Text(
                      'Total Earning',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Color(0XFF3B5436)),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color(0XFFE5E5E5)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 55, top: 16),
                    child: (Text(
                      '\$10304',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.redAccent),
                    )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 236),
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: InkWell(
                          onTap: () => navigate2(context),
                          child: Icon(Icons.person_outline_rounded)),
                    ),
                    Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: InkWell(
                          // onTap: () => navigate2(context),
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
                            onTap: () => navigate(context),
                            child: Icon(Icons.replay_30_rounded))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void navigate2(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Detail3()));
  }

  void navigate3(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Detail5()));
  }

  void navigate(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Detail6()));
  }

  void navigate7(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Detail7()));
  }
}
