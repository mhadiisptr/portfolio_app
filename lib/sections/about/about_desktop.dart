import 'package:flutter/material.dart';
import 'package:app_bio_hadi/configs/configs.dart';
import 'package:app_bio_hadi/constants.dart';
import 'package:app_bio_hadi/utils/about_utils.dart';

import 'package:app_bio_hadi/utils/utils.dart';
import 'package:app_bio_hadi/utils/work_utils.dart';
import 'package:app_bio_hadi/widget/about_me_data.dart';
import 'package:app_bio_hadi/widget/community_button.dart';
import 'package:app_bio_hadi/widget/custom_text_heading.dart';
import 'package:app_bio_hadi/widget/tech_widget.dart';

import 'package:universal_html/html.dart' as html;

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

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
          Row(
            children: [
              Expanded(
                child: Image.asset(
                  StaticUtils.coloredPhoto,
                  height: height * 0.7,
                ),
              ),
              Expanded(
                flex: width < 1230 ? 2 : 1,
                child: Container(
                  padding: EdgeInsets.only(left: width < 1230 ? 25.0 : 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Perkenalkan',
                        style: AppText.b1!.copyWith(
                          color: AppTheme.c!.primary,
                        ),
                      ),
                      Space.y1!,
                      Text(
                        AboutUtils.aboutMeHeadline,
                        style: AppText.b1b!.copyWith(
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      Space.y!,
                      Text(
                        AboutUtils.aboutMeDetail,
                        style: AppText.b2!.copyWith(
                          height: 2,
                          letterSpacing: 1.1,
                          fontFamily: 'Montserrat',
                          fontSize: AppDimensions.normalize(5),
                        ),
                        textAlign: TextAlign.justify,
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
                        children: kTools
                            .map((e) => ToolTechWidget(
                                  techName: e,
                                ))
                            .toList(),
                      ),
                      Space.y!,
                      Divider(
                        color: Colors.grey[800],
                        thickness: AppDimensions.normalize(0.5),
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
                      Space.y1!,
                      Row(
                        children: [
                          SizedBox(
                            height: AppDimensions.normalize(13),
                            width: AppDimensions.normalize(40),
                            child: OutlinedButton(
                              onPressed: () =>
                                  html.window.open(StaticUtils.resume, 'pdf'),
                              child: const Text(
                                "My CV",
                              ),
                            ),
                          ),
                          Space.x1!,
                          Container(
                            color: Colors.grey[900]!,
                            width: AppDimensions.normalize(30),
                            height: AppDimensions.normalize(0.5),
                          ),
                          ...WorkUtils.logos.asMap().entries.map(
                                (e) => Expanded(
                                  child: CommunityIconBtn(
                                    icon: e.value,
                                    link: WorkUtils.communityLinks[e.key],
                                    height:
                                        WorkUtils.communityLogoHeight[e.key],
                                  ),
                                ),
                              )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: width < 1230 ? width * 0.05 : width * 0.1,
              ),
            ],
          )
        ],
      ),
    );
  }
}
