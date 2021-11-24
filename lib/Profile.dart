import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hairfixermanager/Home.dart';
import 'package:hairfixermanager/Privacy.dart';
import 'package:hairfixermanager/Request.dart';
import 'package:hairfixermanager/change.dart';

import 'Faq.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'PROFILE ',
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
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 28),
                  child: Image.asset(
                    'asset/desk2.png',
                    scale: 3,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Hamza Haider',
                      style: GoogleFonts.poppins(
                          fontSize: 24, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'hamzahaider049@gmail.com',
                      style: GoogleFonts.poppins(fontSize: 13),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: Image.asset('asset/desk3.png'),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: InkWell(
                          onTap: () => navigate2(context),
                          child: Text(
                            'Privacy',
                            style: GoogleFonts.poppins(
                                fontSize: 22, fontWeight: FontWeight.w300),
                          )),
                    )
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Image.asset('asset/desk3.png'),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: InkWell(
                          onTap: () => navigate1(context),
                          child: Text(
                            'FAQ',
                            style: GoogleFonts.poppins(
                                fontSize: 22, fontWeight: FontWeight.w300),
                          )),
                    )
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Image.asset('asset/desk3.png'),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        'FeedBack',
                        style: GoogleFonts.poppins(
                            fontSize: 22, fontWeight: FontWeight.w300),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Image.asset('asset/desk3.png'),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: InkWell(
                          onTap: () => navigate(context),
                          child: Text(
                            'Change Password',
                            style: GoogleFonts.poppins(
                                fontSize: 22, fontWeight: FontWeight.w300),
                          )),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 14),
                      child: Image.asset('asset/desk3.png'),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 120),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 49),
                    child: Container(
                      height: 40,
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
                              " Logout",
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
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 29),
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width / 3,
                        decoration: BoxDecoration(
                          color: Colors.white54,
                        ),
                        child: InkWell(
                            onTap: () => navigate3(context),
                            child: Icon(Icons.home_filled)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 29),
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width / 3,
                        decoration: BoxDecoration(
                          color: Colors.white54,
                        ),
                        child: InkWell(
                            onTap: () => navigate4(context),
                            child: Icon(Icons.app_registration)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 29),
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width / 3,
                        decoration: BoxDecoration(
                          color: Colors.white54,
                        ),
                        child: InkWell(
                            //        onTap: ()=>navigate(context),
                            child: Icon(Icons.person_outline_rounded)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }

  void navigate2(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Privacy()));
  }

  void navigate1(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Faq()));
  }

  void navigate(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => change()));
  }

  void navigate3(BuildContext context) {
    Navigator.pop(context, MaterialPageRoute(builder: (context) => Request()));
  }

  void navigate4(BuildContext context) {
    Navigator.pop(context, MaterialPageRoute(builder: (context) => Home()));
  }
}
