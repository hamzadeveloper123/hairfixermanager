import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hairfixermanager/Detail3.dart';
import 'package:hairfixermanager/Detail4.dart';
import 'package:hairfixermanager/Detail5.dart';
import 'package:hairfixermanager/Detail7.dart';

class Detail6 extends StatefulWidget {
  const Detail6({Key? key}) : super(key: key);

  @override
  _Detail6State createState() => _Detail6State();
}

class _Detail6State extends State<Detail6> {
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
                          'Appointment Records ',
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
                    padding: const EdgeInsets.only(top: 12, left: 14),
                    child: Text(
                      'QUEUED APPOINTMENTS',
                      style: GoogleFonts.poppins(
                          fontSize: 24,
                          color: Colors.redAccent,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 270,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 2,
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
                                    //   child: Image.asset(a[index]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 230, top: 77),
                                    child: Image.asset(
                                      'asset/show.png',
                                      scale: 2.8,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 14),
                                    child: Text(
                                      'Customer Name:    Zariyab Ansari\n'
                                      'Appontment Date:   02 September,2021\n'
                                      'Appointment Time:  11.30AM to 12.30PM',
                                      style: GoogleFonts.poppins(
                                          color: Colors.black, fontSize: 11),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 240),
                                    child: Image.asset(
                                      'asset/pic2.png',
                                      scale: 3,
                                    ),
                                  )
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
                  Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: Text(
                      'Completed Appointments',
                      style: GoogleFonts.poppins(
                          fontSize: 22,
                          color: Colors.redAccent,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 230,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 2,
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
                                    //   child: Image.asset(a[index]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 230, top: 77),
                                    child: Image.asset(
                                      'asset/show.png',
                                      scale: 2.8,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 14),
                                    child: Text(
                                      'Customer Name:    Zariyab Ansari\n'
                                      'Appontment Date:   02 September,2021\n'
                                      'Appointment Time:  11.30AM to 12.30PM',
                                      style: GoogleFonts.poppins(
                                          color: Colors.black, fontSize: 11),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 240),
                                    child: Image.asset(
                                      'asset/ali.png',
                                      scale: 3,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 74, left: 12),
                                        child: Image.asset(
                                          'asset/bed.png',
                                          scale: 3,
                                        ),
                                      )
                                    ],
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
                        onTap: () => navigate(context),
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
                          onTap: () => navigate4(context),
                          child: Icon(Icons.settings_applications_rounded))),
                  Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: InkWell(
                          //   onTap: () => navigate3(context),
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
    Navigator.push(context, MaterialPageRoute(builder: (context) => Detail3()));
  }

  void navigate3(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Detail5()));
  }

  void navigate(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Detail4()));
  }

  void navigate4(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Detail7()));
  }
}
