import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:app_bio_hadi/configs/configs.dart';
import 'package:app_bio_hadi/constants.dart';
import 'package:app_bio_hadi/utils/project_utils.dart';
import 'package:app_bio_hadi/utils/utils.dart';
import 'package:app_bio_hadi/widget/custom_text_heading.dart';
import 'package:app_bio_hadi/widget/project_card.dart';

class PortfolioMobileTab extends StatelessWidget {
  const PortfolioMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const CustomSectionHeading(
          text: "\nProject Results",
        ),
        const CustomSectionSubHeading(
          text: "Berikut adalah beberapa contoh karya saya sebelumnya\n\n",
        ),
        CarouselSlider.builder(
          itemCount: ProjectUtils.titles.length,
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: ProjectCard(
              projectIcon: ProjectUtils.icons[i],
              projectLink: ProjectUtils.links[i],
              projectTitle: ProjectUtils.titles[i],
              projectDescription: ProjectUtils.description[i],
            ),
          ),
          options: CarouselOptions(
            height: height * 0.4,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
        ),
        Space.y!,
        SizedBox(
          height: AppDimensions.normalize(14),
          width: AppDimensions.normalize(50),
          child: OutlinedButton(
            onPressed: () => openURL(StaticUtils.gitHub),
            child: Text(
              'See More',
              style: AppText.l1b,
            ),
          ),
        )
      ],
    );
  }
}
