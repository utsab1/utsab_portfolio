import 'dart:developer';

import 'package:aryal/utils/functions.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:aryal/presentation/layout/adaptive.dart';
import 'package:aryal/presentation/widgets/buttons/aryal_button.dart';
import 'package:aryal/presentation/widgets/skill_card.dart';
import 'package:aryal/presentation/widgets/spaces.dart';
import 'package:aryal/values/values.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class BrandSection extends StatelessWidget {
  BrandSection({Key? key});
  CarouselOptions carouselOptions({
    bool autoPlay = true,
    bool enlargeCenterPage = false,
    double viewportFraction = 1.0,
    double aspectRatio = 0.1,
    int initialPage = 0,
    ScrollPhysics? scrollPhysics = const NeverScrollableScrollPhysics(),
  }) {
    return CarouselOptions(
      autoPlay: autoPlay,
      enlargeCenterPage: enlargeCenterPage,
      viewportFraction: viewportFraction,
      aspectRatio: aspectRatio,
      initialPage: initialPage,
      scrollPhysics: scrollPhysics,
    );
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    double heightOfCarouselSm = assignWidth(context, 0.40);
    double widthOfCarouselMd = assignWidth(context, 0.33);
    double heightOfCarouselMd = widthOfCarouselMd / 1.4;
    double heightOfCarouselLg = 150;
    return Container(
      child: Column(
        children: [
          Text(
            StringConst.BRANDS_SECTION_TITLE,
            textAlign: TextAlign.center,
            style: textTheme.headline4,
          ),
          SpaceH40(),
          ResponsiveBuilder(
            builder: (context, sizingInformation) {
              double screenWidth = sizingInformation.screenSize.width;
              if (screenWidth <= (RefinedBreakpoints().tabletSmall)) {
                return Container(
                  height: heightOfCarouselSm,
                  width: widthOfScreen(context),
                  child: CarouselSlider.builder(
                    itemCount: Data.skillCard.length,
                    itemBuilder:
                        (BuildContext context, int pageViewIndex, int index) {
                      return SkillCard(
                        width: assignWidth(context, 0.4),
                        height: heightOfCarouselSm,
                        child: Data.skillCard[pageViewIndex].child,
                        title: Data.skillCard[pageViewIndex].title,
                      );
                    },
                    options: carouselOptions(),
                  ),
                );
              } else if (screenWidth < 1400) {
                return Container(
                  height: heightOfCarouselMd,
                  width: widthOfScreen(context),
                  child: CarouselSlider.builder(
                    itemCount: Data.skillCard.map((e) => e).length,
                    itemBuilder: (BuildContext context, int pageViewIndex, _) {
                      return SkillCard(
                        width: widthOfCarouselMd,
                        height: heightOfCarouselMd,
                        child: Data.skillCard[pageViewIndex].child,
                        title: Data.skillCard[pageViewIndex].title,
                      );
                    },
                    options: carouselOptions(viewportFraction: 0.2),
                  ),
                );
              } else {
                return Container(
                  height: heightOfCarouselLg,
                  width: widthOfScreen(context),
                  child: CarouselSlider.builder(
                    itemCount: Data.skillCard.length,
                    itemBuilder: (
                      BuildContext ctx,
                      int pageViewIndex,
                      int index,
                    ) {
                      return SkillCard(
                        width: 200,
                        height: heightOfCarouselLg,
                        child: Data.skillCard[pageViewIndex].child,
                        title: Data.skillCard[pageViewIndex].title,
                      );
                    },
                    options: carouselOptions(viewportFraction: 0.15),
                  ),
                );
              }
            },
          ),
          SpaceH40(),
          // Align(
          //   alignment: Alignment.center,
          //   child: AryalButton(
          //     buttonTitle: StringConst.HIRE_ME,
          //     buttonColor: AppColors.primaryColor,
          //     onPressed: () {
          //       openUrlLink(StringConst.EMAIL_URL);
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
