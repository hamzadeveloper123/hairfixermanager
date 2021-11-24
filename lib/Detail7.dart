import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hairfixermanager/Detail3.dart';
import 'package:hairfixermanager/Detail4.dart';
import 'package:hairfixermanager/Detail5.dart';
import 'package:hairfixermanager/Detail6.dart';

class Detail7 extends StatefulWidget {
  const Detail7({Key? key}) : super(key: key);

  @override
  _Detail7State createState() => _Detail7State();
}

class _Detail7State extends State<Detail7> {
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
                          'Services ',
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.asset(
                        'asset/fill.png',
                        scale: 3,
                      ),
                    ),
                  ),
                  Image.asset(
                    'asset/fills.png',
                    scale: 3,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.asset(
                        'asset/ill.png',
                        scale: 3,
                      ),
                    ),
                  ),
                  Image.asset(
                    'asset/ills.png',
                    scale: 3,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.asset(
                        'asset/his.png',
                        scale: 3,
                      ),
                    ),
                  ),
                  Image.asset(
                    'asset/him.png',
                    scale: 3,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.asset(
                        'asset/spa.png',
                        scale: 3,
                      ),
                    ),
                  ),
                  Image.asset(
                    'asset/spas.png',
                    scale: 3,
                  )
                ],
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
                        onTap: () => navigate5(context),
                        child: Icon(Icons.person_outline_rounded)),
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: InkWell(
                        onTap: () => navigate3(context),
                        child: Icon(Icons.alternate_email_outlined)),
                  ),
                  Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: InkWell(
                          onTap: () => navigate2(context),
                          child: Icon(Icons.wallet_travel_sharp))),
                  Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: InkWell(
                          //        onTap: () => navigate7(context),
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

  void navigate4(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Detail6()));
  }

  void navigate2(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Detail5()));
  }

  void navigate3(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Detail4()));
  }

  void navigate5(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Detail3()));
  }
}
