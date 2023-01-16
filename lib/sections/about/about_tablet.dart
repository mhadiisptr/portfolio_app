import 'package:app_bio_hadi/configs/configs.dart';
import 'package:app_bio_hadi/utils/about_utils.dart';
import 'package:app_bio_hadi/utils/utils.dart';
import 'package:app_bio_hadi/utils/work_utils.dart';

import 'package:app_bio_hadi/widget/custom_text_heading.dart';
import 'package:universal_html/html.dart' as html;
import 'package:flutter/material.dart';
import 'package:app_bio_hadi/constants.dart';
import 'package:app_bio_hadi/widget/about_me_data.dart';
import 'package:app_bio_hadi/widget/community_button.dart';
import 'package:app_bio_hadi/widget/tech_widget.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: Space.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Center(
            child: CustomSectionHeading(
              text: '\nTentang Saya',
            ),
          ),
          const Center(
            child: CustomSectionSubHeading(
              text: 'Halo Guys!',
            ),
          ),
          Space.y1!,
          Image.asset(
            StaticUtils.mobilePhoto,
            height: height * 0.27,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Text(
            "Perkenalkan",
            style: AppText.b2!.copyWith(
              color: AppTheme.c!.primary,
            ),
          ),
          Space.y1!,
          Text(
            AboutUtils.aboutMeHeadline,
            style: AppText.b2b!.copyWith(
              fontFamily: 'Montserrat',
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            AboutUtils.aboutMeDetail,
            style: AppText.l1!.copyWith(
              height: 2,
              letterSpacing: 1.1,
              fontFamily: 'Montserrat',
            ),
          ),
          Space.y!,
          Divider(
            color: Colors.grey[800],
            thickness: AppDimensions.normalize(0.5),
          ),
          Space.y!,
          Text(
            'Bahasa Pemrograman yang saya Kuasasi:',
            style: AppText.l1!.copyWith(
              color: AppTheme.c!.primary,
            ),
          ),
          Row(
            children: kTools
                .map(
                  (e) => ToolTechWidget(techName: e),
                )
                .toList(),
          ),
          Space.y!,
          Divider(
            color: Colors.grey[800],
            thickness: AppDimensions.normalize(0.5),
          ),
          Space.y!,
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                              AboutMeData(
                                data: "Nama",
                                information: "Muhammad Hadi",
                              ),
                              AboutMeData(
                                data: "Tempat, Tanggal Lahir",
                                information: "Palembang, 04 Juni 2001",
                              ),
                              AboutMeData(
                                data: "Umur",
                                information: "21",
                              ),
                              AboutMeData(
                                data: "Pekerjaan",
                                information: "Mahasiswa",
                              ),
                              AboutMeData(
                                data: "Hobi",
                                information: "Bermain Game",
                              ),
                ],
              ),
              SizedBox(
                width: width > 710 ? width * 0.2 : width * 0.05,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                
                ],
              ),
            ],
          ),
          Space.y1!,
          Row(
            children: [
              SizedBox(
                height: AppDimensions.normalize(13),
                width: AppDimensions.normalize(40),
                child: OutlinedButton(
                  onPressed: () => html.window.open(StaticUtils.resume, 'pdf'),
                  child: const Text(
                    "CV",
                  ),
                ),
              ),
              Space.x!,
              Container(
                width: width * 0.05,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey[900]!,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: WorkUtils.logos
                        .asMap()
                        .entries
                        .map(
                          (e) => CommunityIconBtn(
                            icon: e.value,
                            link: WorkUtils.communityLinks[e.key],
                            height: WorkUtils.communityLogoHeight[e.key],
                          ),
                        )
                        .toList()),
              ),
            ],
          )
        ],
      ),
    );
  }
}
