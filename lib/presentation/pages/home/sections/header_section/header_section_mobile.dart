import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:aryal/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:aryal/presentation/layout/adaptive.dart';
import 'package:aryal/presentation/pages/home/sections/header_section/widgets.dart';
import 'package:aryal/presentation/widgets/buttons/aryal_button.dart';
import 'package:aryal/presentation/widgets/content_area.dart';
import 'package:aryal/presentation/widgets/buttons/aryal_button_link.dart';
import 'package:aryal/presentation/widgets/spaces.dart';
import 'package:aryal/values/values.dart';
import 'package:url_launcher/url_launcher.dart';

const double bodyTextSizeLg = 16.0;
const double bodyTextSizeSm = 14.0;
const double socialTextSizeLg = 18.0;
const double socialTextSizeSm = 14.0;
const double sidePadding = Sizes.PADDING_16;

class HeaderSectionMobile extends StatefulWidget {
  const HeaderSectionMobile({Key? key}) : super(key: key);

  @override
  _HeaderSectionMobileState createState() => _HeaderSectionMobileState();
}

class _HeaderSectionMobileState extends State<HeaderSectionMobile>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  void _launchURL() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: StringConst.DEV_EMAIL,
      query: 'subject= Hire ', //add subject and body here
    );
    String url = params.toString();
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Could not launch $url');
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 20),
      vsync: this,
    )..repeat();

    _controller.forward();
    _controller.addListener(() {
      if (_controller.status == AnimationStatus.completed) {
        _controller.reset();
        _controller.forward();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    double headerIntroTextSize = Sizes.TEXT_SIZE_24;
    double screenWidth = widthOfScreen(context) - (sidePadding * 2);
    double contentAreaWidth = screenWidth;
    TextStyle? bodyTextStyle =
        textTheme.bodyText1?.copyWith(fontSize: bodyTextSizeSm);
    TextStyle? socialTitleStyle =
        textTheme.subtitle1?.copyWith(fontSize: socialTextSizeSm);

    double buttonWidth = 80;
    double buttonHeight = 48;

    double sizeOfBlobSm = screenWidth * 0.4;
    double sizeOfGoldenGlobe = screenWidth * 0.3;
    double dottedGoldenGlobeOffset = sizeOfBlobSm * 0.4;
    double heightOfBlobAndGlobe =
        computeHeight(dottedGoldenGlobeOffset, sizeOfGoldenGlobe, sizeOfBlobSm);
    double heightOfStack = heightOfBlobAndGlobe * 2;
    double blobOffset = heightOfStack * 0.3;
    return ContentArea(
      child: Stack(
        children: [
          Container(
            height: heightOfStack,
            child: Stack(
              children: [
                Stack(
                  children: [
                    // Positioned(
                    //   left: -(sizeOfBlobSm * 0.7),
                    //   top: blobOffset,
                    //   child: Image.asset(
                    //     ImagePath.BLOB_BLACK,
                    //     height: sizeOfBlobSm,
                    //     width: sizeOfBlobSm,
                    //   ),
                    // ),
                    Positioned(
                      left: -(sizeOfGoldenGlobe / 3),
                      top: blobOffset + dottedGoldenGlobeOffset,
                      child: RotationTransition(
                        turns: _controller,
                        child: Image.asset(
                          ImagePath.DOTS_GLOBE_YELLOW,
                          width: sizeOfGoldenGlobe,
                          height: sizeOfGoldenGlobe,
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  right: -(sizeOfBlobSm),
                  child: HeaderImage(
                    controller: _controller,
                    globeSize: sizeOfGoldenGlobe,
                    imageHeight: heightOfStack,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: heightOfStack * 0.1),
                    child: SelectableText(
                      StringConst.FIRST_NAME,
                      style: textTheme.headline1?.copyWith(
                        color: AppColors.grey50,
                        fontSize: headerIntroTextSize * 2.5,
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: sidePadding),
                    margin: EdgeInsets.only(top: heightOfStack * 0.3),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ConstrainedBox(
                              constraints:
                                  BoxConstraints(maxWidth: screenWidth),
                              child: AnimatedTextKit(
                                animatedTexts: [
                                  TypewriterAnimatedText(
                                    StringConst.INTRO,
                                    speed: Duration(milliseconds: 60),
                                    textStyle: textTheme.headline2?.copyWith(
                                      fontSize: headerIntroTextSize,
                                    ),
                                  ),
                                ],
                                onTap: () {},
                                isRepeatingAnimation: true,
                                totalRepeatCount: 5,
                              ),
                            ),
                            ConstrainedBox(
                              constraints:
                                  BoxConstraints(maxWidth: screenWidth),
                              child: AnimatedTextKit(
                                animatedTexts: [
                                  TypewriterAnimatedText(
                                    StringConst.POSITION,
                                    speed: Duration(milliseconds: 80),
                                    textStyle: textTheme.headline2?.copyWith(
                                      fontSize: headerIntroTextSize,
                                      color: AppColors.primaryColor,
                                      height: 1.2,
                                    ),
                                  ),
                                ],
                                onTap: () {},
                                isRepeatingAnimation: true,
                                totalRepeatCount: 5,
                              ),
                            ),
                            SpaceH16(),
                            ConstrainedBox(
                              constraints:
                                  BoxConstraints(maxWidth: screenWidth * 0.5),
                              child: SelectableText(
                                StringConst.ABOUT_DEV,
                                style: bodyTextStyle?.copyWith(
                                  height: 1.5,
                                  // color: AppColors.black,
                                ),
                              ),
                            ),
                            SpaceH30(),
                            Wrap(
                              // mainAxisSize: MainAxisSize.min,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SelectableText(
                                      "${StringConst.EMAIL}:",
                                      style: socialTitleStyle,
                                    ),
                                    SpaceH8(),
                                    SelectableText(
                                      "${StringConst.DEV_EMAIL_2}",
                                      style: bodyTextStyle,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SpaceH40(),
                            Row(
                              children: [
                                SpaceW16(),
                                AryalButton(
                                  width: buttonWidth,
                                  height: buttonHeight,
                                  buttonTitle: StringConst.HIRE_ME_NOW,
                                  onPressed: () {
                                    openUrlLink(StringConst.EMAIL_URL);
                                  },
                                ),
                                // AryalButtonLink(
                                //   width: buttonWidth,
                                //   height: buttonHeight,
                                //   url: StringConst.EMAIL_URL,
                                //   buttonColor: AppColors.primaryColor,
                                //   buttonTitle: StringConst.HIRE_ME_NOW,
                                // ),
                              ],
                            ),
                            SpaceH30(),
                            Wrap(
                              children: buildSocialIcons(Data.socialData),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SpaceH40(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: sidePadding,
                ),
                child: Column(
                  children: buildCardRow(
                    context: context,
                    data: Data.aryalCardData,
                    width: contentAreaWidth,
                    isHorizontal: false,
                    hasAnimation: false,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
