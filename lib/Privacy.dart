import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hairfixermanager/Profile.dart';

class Privacy extends StatefulWidget {
  const Privacy({Key? key}) : super(key: key);

  @override
  _PrivacyState createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
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
                      onTap: () => navigate(context),
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
                          'Privacy ',
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
                    padding: const EdgeInsets.only(top: 13, left: 12),
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and\n'
                      'typesetting industry.Loremipsum has been the industry\n'
                      'standard dummy text ever since the 1500 when an\n'
                      'unknown printer took a gallery of typeand scrambled\n'
                      'specimen book. it haas survived of lorem ipsum.',
                      style: GoogleFonts.poppins(fontSize: 12),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12, left: 13),
                    child: Text(
                      'Why do we use it?\n'
                      'it is a long time fact thata readerwill be distracted \n'
                      'the readable content of a page when looking ata its \n'
                      'The pointof using lorem ipsum is that has a more\n'
                      'accident, sometimes on purpose(injected humour \n'
                      'and the like).',
                      style: GoogleFonts.poppins(fontSize: 12),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 29, left: 12),
                    child: Text(
                      'Where dose it come from?\n'
                      'Contrary to Popular belief ,Lorem Ipsum is not Simply\n'
                      'Random text .it has a roots in a piece of classical\n'
                      ' latin litrarture ftom 45 BC, making it over 2000 year old\n'
                      'This book is a treatise on the thoery of ethics, very\n'
                      'pupolar during the  Reinaissan.....',
                      style: GoogleFonts.poppins(fontSize: 12),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void navigate(BuildContext context) {
    Navigator.pop(context, MaterialPageRoute(builder: (context) => Profile()));
  }
}
