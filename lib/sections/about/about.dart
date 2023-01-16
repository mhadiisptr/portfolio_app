import 'package:flutter/material.dart';
import 'package:app_bio_hadi/responsive/responsive.dart';
import 'package:app_bio_hadi/sections/about/about_desktop.dart';
import 'package:app_bio_hadi/sections/about/about_mobile.dart';
import 'package:app_bio_hadi/sections/about/about_tablet.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      tablet: AboutTab(),
      mobile: AboutMobile(),
      desktop: AboutDesktop(),
    );
  }
}
