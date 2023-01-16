import 'package:flutter/material.dart';
import 'package:app_bio_hadi/sections/about/about.dart';
import 'package:app_bio_hadi/sections/contact/contact.dart';
import 'package:app_bio_hadi/sections/home/home.dart';
import 'package:app_bio_hadi/sections/portfolio/portfolio.dart';
import 'package:app_bio_hadi/sections/services/services.dart';
import 'package:app_bio_hadi/widget/footer.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';

  // photos
  static const String mobilePhoto = 'assets/photos/mobile.png';
  static const String coloredPhoto = 'assets/photos/colored.png';
  static const String blackWhitePhoto = 'assets/photos/black-white.png';

  // work
  static const String university = 'assets/work/palcom.png';

  // services
  static const String android = 'assets/services/app.png';
  static const String ui = 'assets/services/ui.png';
  static const String vid = 'assets/services/vid.png';
  static const String wp = 'assets/services/wps.png';
  static const String openSource = 'assets/services/open.png';
  static const String openSourceBlack = 'assets/services/open_b.png';

  static const List<String> socialIconURL = [
    "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
    "https://img.icons8.com/android/480/ffffff/twitter.png",
    "https://img.icons8.com/metro/308/ffffff/linkedin.png",
    "https://img.icons8.com/material-rounded/384/ffffff/github.png",
  ];

  static const List<String> socialLinks = [
    "https://instagram.com/mhadiisptr",
    "https://twitter.com/mhhadiisptr",
    "https://linkedin.com/in/muhamad-hadi-saputra-b21454215",
    "https://github.com/mhhadiisptr",
  ];

  static const String resume =
      'https://drive.google.com/file/d/1VGXec0hpO1-RwXKh5oCGOmrsClG9EGJP/view?usp=sharing';

  static const String gitHub = 'https://github.com/mhadiisptr';
}

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    About(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
