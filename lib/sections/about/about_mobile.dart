import 'package:flutter/foundation.dart';
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

class AboutMobile extends StatelessWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      padding: Space.h,
      child: Column(
        children: [
          const CustomSectionHeading(
            text: '\nTentang Saya',
          ),
          const CustomSectionSubHeading(
            text: 'Halo Guys!',
          ),
          Space.y1!,
          Image.asset(
            StaticUtils.mobilePhoto,
            height: height * 0.27,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Perkenalkan",
              style: AppText.b2!.copyWith(
                color: AppTheme.c!.primary,
              ),
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
          Space.y!,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
          SizedBox(
            height: height * 0.02,
          ),
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
                          const Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                            
                            ],
                          ),
                        ],
                      ),
          Space.y!,
          OutlinedButton(
              child: const Text("CV"),
              onPressed: () {
                kIsWeb
                    ? html.window.open(StaticUtils.resume, "pdf")
                    : openURL(StaticUtils.resume);
              }),
          Space.y!,
          Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
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
        ],
      ),
    );
  }
}
