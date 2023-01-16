import 'package:flutter/material.dart';
import 'package:app_bio_hadi/animations/bottom_animation.dart';
import 'package:app_bio_hadi/configs/configs.dart';
import 'package:app_bio_hadi/utils/contact_utils.dart';
import 'package:app_bio_hadi/widget/custom_text_heading.dart';
import 'package:app_bio_hadi/widget/project_card.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Space.all(1, 1),
      child: Column(
        children: [
          const CustomSectionHeading(
            text: "\nContact",
          ),
          const CustomSectionSubHeading(
            text: "Ada Pertanyaan? Silahkan Hubungi\n\n",
          ),
          Space.y!,
          Wrap(
              alignment: WrapAlignment.center,
              runSpacing: AppDimensions.normalize(10),
              children: ContactUtils.contactIcon
                  .asMap()
                  .entries
                  .map((e) => WidgetAnimator(
                        child: ProjectCard(
                          projectIconData: e.value,
                          projectTitle: ContactUtils.titles[e.key],
                          projectDescription: ContactUtils.details[e.key],
                        ),
                      ))
                  .toList()),
        ],
      ),
    );
  }
}
