import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hairfixermanager/Profile.dart';

class change extends StatefulWidget {
  const change({Key? key}) : super(key: key);

  @override
  _changeState createState() => _changeState();
}

class _changeState extends State<change> {
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
                  Row(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18, top: 22),
                            child: InkWell(
                              onTap: () => navigate(context),
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
                          'Change Password ',
                          style: GoogleFonts.poppins(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
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
                    padding: const EdgeInsets.only(left: 29, top: 10),
                    child: Text(
                      'Enter Current Password',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  width: double.infinity,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 30, vertical: 1),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0XFFF5F5F5),
                          ),
                          child: Column(
                            children: [
                              Container(
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "", border: InputBorder.none),
                                ),
                              )
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 29, top: 10),
                    child: Text(
                      'Enter New Password',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  width: double.infinity,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 30, vertical: 1),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0XFFF5F5F5),
                          ),
                          child: Column(
                            children: [
                              Container(
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "", border: InputBorder.none),
                                ),
                              )
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 29, top: 10),
                    child: Text(
                      'Confirm Password',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  width: double.infinity,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 30, vertical: 1),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0XFFF5F5F5),
                          ),
                          child: Column(
                            children: [
                              Container(
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "", border: InputBorder.none),
                                ),
                              )
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 120),
                child: Padding(
                  padding: const EdgeInsets.only(top: 49),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.redAccent),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          //   onTap: ()=>navigate(context),
                          child: Text(
                            "DONE",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ],
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

  void navigate(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
  }
}
