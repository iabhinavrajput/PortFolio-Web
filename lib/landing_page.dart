// ignore_for_file: deprecated_member_use, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  String desc =
      "Hello! I'm Abhinav, an app developer and aspiring UI designer with a passion for creating innovative solutions and user-friendly applications. \n Currently pursuing my B.Tech in Computer Science - Information Technology from Dr. A.P.J. Abdul Kalam Technical University, \n I have gained hands-on experience in Flutter, Python, and other technologies, enabling me to develop impactful projects.";

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          colors: [
            Colors.lightBlue.shade800,
            Colors.blue.shade500,
          ],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(80)),
              child: Image.asset(
                "assets/images/profilepic.png",
                width: 150,
                height: 150,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              "Abhinav",
              style: GoogleFonts.abel(
                textStyle: const TextStyle(
                    fontSize: 55.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                desc,
                textAlign: TextAlign.center,
                style: GoogleFonts.abel(
                  textStyle: const TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Connect with me",
              style: GoogleFonts.abel(
                textStyle: const TextStyle(
                  fontSize: 35.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    _launchURL("https://www.x.com/iabhinavrajput");
                  },
                  child: SvgPicture.asset(
                    'assets/images/twitter.svg', // Replace with the path to your SVG file
                    width: 50, // Set the width and height as needed
                    height: 50,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL("https://github.com/iabhinavrajput");
                  },
                  child: SvgPicture.asset(
                    'assets/images/github.svg',
                    width: 50,
                    height: 50,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL("https://www.linkedin.com/in/iabhinavrajput/");
                  },
                  child: SvgPicture.asset(
                    'assets/images/linkedin.svg',
                    width: 50,
                    height: 50,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL(
                        "https://api.whatsapp.com/send/?phone=%2B919760421481&text&type=phone_number&app_absent=0");
                  },
                  child: SvgPicture.asset(
                    'assets/images/whatsapp.svg',
                    width: 50,
                    height: 50,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                _launchURL(
                    "https://drive.google.com/file/d/1PauaC0WmP6RO6a9xcEa8h3LmtzeW73uE/view?usp=sharing");
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    color: Colors.greenAccent.shade700),
                child: Text(
                  "Download My Resume",
                  style: GoogleFonts.abel(
                      textStyle: const TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.w400)),
                ),
              ),
            ),
            const SizedBox(
              height: 13.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Built using",
                          style: GoogleFonts.abel(
                              textStyle: const TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                    const Row(
                      children: [
                        Image(
                          image: AssetImage(
                            'assets/images/flutter.png',
                          ),
                          width: 20.0,
                          height: 20.0,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "with much",
                          style: GoogleFonts.abel(
                              textStyle: const TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                    const Row(
                      children: [
                        Image(
                          image: AssetImage(
                            'assets/images/heart.png',
                          ),
                          width: 20.0,
                          height: 20.0,
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),

            // Text(
            //   "Built using ",
            //   style: GoogleFonts.abel(
            //       textStyle:
            //           TextStyle(fontSize: 25.0, fontWeight: FontWeight.w400)),
            // )
          ],
        ),
      ),
    );
  }
}
