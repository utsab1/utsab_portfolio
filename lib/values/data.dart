part of values;

class Data {
  static List<SocialButtonData> socialData = [
    SocialButtonData(
      tag: StringConst.FACEBOOK_URL,
      iconData: FontAwesomeIcons.facebook,
      url: StringConst.FACEBOOK_URL,
    ),
    SocialButtonData(
      tag: StringConst.LINKED_IN_URL,
      iconData: FontAwesomeIcons.linkedin,
      url: StringConst.LINKED_IN_URL,
    ),
    SocialButtonData(
      tag: StringConst.INSTAGRAM_URL,
      iconData: FontAwesomeIcons.instagram,
      url: StringConst.INSTAGRAM_URL,
    ),
  ];
  static List<SocialButton2Data> socialData2 = [
    SocialButton2Data(
      title: StringConst.LINKEDIN,
      iconData: FontAwesomeIcons.linkedin,
      url: StringConst.LINKED_IN_URL,
      titleColor: AppColors.pink300,
      buttonColor: AppColors.pink300,
      iconColor: AppColors.white,
    ),
    SocialButton2Data(
      title: StringConst.INSTA,
      iconData: FontAwesomeIcons.instagram,
      url: StringConst.INSTAGRAM_URL,
      titleColor: AppColors.yellow300,
      buttonColor: AppColors.yellow300,
      iconColor: AppColors.white,
    ),
  ];

  static List<SkillLevelData> skillLevelData = [
    SkillLevelData(
      skill: StringConst.SKILLS_1,
      level: 80,
    ),
    SkillLevelData(
      skill: StringConst.SKILLS_2,
      level: 90,
    ),
    SkillLevelData(
      skill: StringConst.SKILLS_3,
      level: 70,
    ),
  ];

  static List<SkillCardData> skillCardData = [
    SkillCardData(
      title: StringConst.SKILLS_1,
      description: StringConst.SKILLS_1_DESC,
      iconData: FontAwesomeIcons.compress,
    ),
    SkillCardData(
        title: "",
        description: "",
        iconData: Icons.pages_outlined), //not being used
    SkillCardData(
      title: StringConst.SKILLS_2,
      description: "",
      iconData: Icons.pages_outlined,
    ),
    SkillCardData(
      title: StringConst.SKILLS_3,
      description: StringConst.SKILLS_3_DESC,
      iconData: FontAwesomeIcons.paintBrush,
    ),
    SkillCardData(
      title: StringConst.SKILLS_4,
      description: StringConst.SKILLS_4_DESC,
      iconData: FontAwesomeIcons.recordVinyl,
    ),
    SkillCardData(
        title: "",
        description: "",
        iconData: Icons.pages_outlined), //not being used
  ];
  static List<SkillCard> skillCard = [
    SkillCard(
        description: "",
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImagePath.BRAD_1,
              width: 80,
              height: 80,
            ),
            SpaceH12(),
            SelectableText(
              StringConst.BRAND_01,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.black45),
              textAlign: TextAlign.center,
            ),
          ],
        )),

    SkillCard(
        description: "",
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImagePath.BRAD_2,
              width: 80,
              height: 80,
            ),
            SpaceH12(),
            SelectableText(
              StringConst.BRAND_02,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.black45),
              textAlign: TextAlign.center,
            ),
          ],
        )),
    //not being used
    SkillCard(
        description: "",
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImagePath.BRAD_3,
              width: 80,
              height: 80,
            ),
            SpaceH12(),
            SelectableText(
              StringConst.BRAND_03,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.black45),
              textAlign: TextAlign.center,
            ),
          ],
        )),
//not being used
    SkillCard(
        description: "",
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImagePath.BRAD_4,
              width: 80,
              height: 80,
            ),
            SpaceH12(),
            SelectableText(
              StringConst.BRAND_04,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.black45),
              textAlign: TextAlign.center,
            ),
          ],
        )),

    SkillCard(
        title: StringConst.BRAND_05,
        description: "",
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImagePath.BRAD_5,
              width: 80,
              height: 80,
            ),
            SpaceH12(),
            SelectableText(
              StringConst.BRAND_05,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.black45),
              textAlign: TextAlign.center,
            ),
          ],
        )),
    //not being used
  ];

  static List<StatItemData> statItemsData = [
    // StatItemData(value: 120, subtitle: StringConst.HAPPY_CLIENTS),
    StatItemData(value: 3, subtitle: StringConst.YEARS_OF_EXPERIENCE),
    StatItemData(value: 10, subtitle: StringConst.INCREDIBLE_PROJECTS),
    StatItemData(value: 3, subtitle: StringConst.AWARD_WINNING),
  ];

  static List<ProjectCategoryData> projectCategories = [
    ProjectCategoryData(title: StringConst.ALL, number: 6, isSelected: true),
    ProjectCategoryData(title: StringConst.DEPLOYED, number: 4),
    ProjectCategoryData(title: StringConst.ANIMATED, number: 1),
    ProjectCategoryData(title: StringConst.UIDESIGN, number: 2),
    ProjectCategoryData(title: StringConst.WEB_DESIGN, number: 2),
  ];

  static List<String> awards1 = [
    StringConst.AWARDS_1,
    StringConst.AWARDS_2,
    StringConst.AWARDS_3,
    StringConst.AWARDS_4,
    StringConst.AWARDS_5,
  ];
  static List<String> awards2 = [
    StringConst.AWARDS_6,
    StringConst.AWARDS_7,
    StringConst.AWARDS_8,
    StringConst.AWARDS_9,
    // StringConst.AWARDS_10,
  ];
  // static List<BlogCardData> blogData = [
  //   BlogCardData(
  //     category: StringConst.BLOG_CATEGORY_1,
  //     title: StringConst.BLOG_TITLE_1,
  //     date: StringConst.BLOG_DATE,
  //     buttonText: StringConst.READ_MORE,
  //     imageUrl: ImagePath.BLOG_01,
  //   ),
  //   BlogCardData(
  //     category: StringConst.BLOG_CATEGORY_2,
  //     title: StringConst.BLOG_TITLE_2,
  //     date: StringConst.BLOG_DATE,
  //     buttonText: StringConst.READ_MORE,
  //     imageUrl: ImagePath.BLOG_02,
  //   ),
  //   BlogCardData(
  //     category: StringConst.BLOG_CATEGORY_3,
  //     title: StringConst.BLOG_TITLE_3,
  //     date: StringConst.BLOG_DATE,
  //     buttonText: StringConst.READ_MORE,
  //     imageUrl: ImagePath.BLOG_03,
  //   ),
  // ];

  static List<AryalCardData> aryalCardData = [
    AryalCardData(
      title: StringConst.UI_UX,
      subtitle: StringConst.UI_UX_DESC,
      leadingIcon: Icons.done,
      trailingIcon: Icons.chevron_right,
    ),
    AryalCardData(
      title: StringConst.UIDESIGN,
      subtitle: StringConst.PHOTOGRAPHER_DESC,
      leadingIcon: Icons.done,
      trailingIcon: Icons.chevron_right,
      circleBgColor: AppColors.yellow100,
    ),
    AryalCardData(
      title: StringConst.FREELANCER,
      subtitle: StringConst.FREELANCER_DESC,
      leadingIcon: Icons.done,
      trailingIcon: Icons.chevron_right,
      leadingIconColor: AppColors.black,
      circleBgColor: AppColors.grey50,
    ),
  ];

  static List<ProjectData> allProjects = [
    ProjectData(
      title: StringConst.PORTFOLIO_1_TITLE,
      category: StringConst.UI,
      projectCoverUrl: ImagePath.PORTFOLIO_1,
      width: 0.5,
      mobileHeight: 0.3,
    ),
    ProjectData(
      title: StringConst.PORTFOLIO_2_TITLE,
      category: StringConst.WEB_DESIGN,
      projectCoverUrl: ImagePath.PORTFOLIO_2,
      width: 0.225,
    ),
    ProjectData(
      title: StringConst.PORTFOLIO_3_TITLE,
      category: StringConst.DEPLOYED,
      projectCoverUrl: ImagePath.PORTFOLIO_3,
      width: 0.225,
    ),
    ProjectData(
      title: StringConst.PORTFOLIO_4_TITLE,
      category: StringConst.WEB_DESIGN,
      projectCoverUrl: ImagePath.PORTFOLIO_4,
      width: 0.2375,
    ),
    ProjectData(
      title: StringConst.PORTFOLIO_5_TITLE,
      category: StringConst.ANIMATED,
      projectCoverUrl: ImagePath.PORTFOLIO_5,
      width: 0.2375,
    ),
    ProjectData(
      title: StringConst.PORTFOLIO_6_TITLE,
      category: StringConst.UI,
      projectCoverUrl: ImagePath.PORTFOLIO_6,
      width: 0.475,
      mobileHeight: 0.3,
    ),
  ];
  static List<ProjectData> deployed = [
    ProjectData(
      title: StringConst.PORTFOLIO_3_TITLE,
      category: StringConst.DEPLOYED,
      projectCoverUrl: ImagePath.PORTFOLIO_3,
      width: 0.225,
    ),
    ProjectData(
      title: StringConst.PORTFOLIO_7_TITLE,
      category: StringConst.DEPLOYED,
      projectCoverUrl: ImagePath.PORTFOLIO_7,
      width: 0.225,
    ),
    ProjectData(
      title: StringConst.PORTFOLIO_8_TITLE,
      category: StringConst.DEPLOYED,
      projectCoverUrl: ImagePath.PORTFOLIO_8,
      width: 0.225,
    ),
    ProjectData(
      title: StringConst.PORTFOLIO_9_TITLE,
      category: StringConst.DEPLOYED,
      projectCoverUrl: ImagePath.PORTFOLIO_9,
      width: 0.225,
    ),
  ];
  static List<ProjectData> animated = [
    ProjectData(
      title: StringConst.PORTFOLIO_5_TITLE,
      category: StringConst.ANIMATED,
      projectCoverUrl: ImagePath.PORTFOLIO_5,
      width: 0.2375,
    ),
  ];
  static List<ProjectData> ui = [
    ProjectData(
      title: StringConst.PORTFOLIO_1_TITLE,
      category: StringConst.UI,
      projectCoverUrl: ImagePath.PORTFOLIO_1,
      width: 0.5,
      mobileHeight: 0.3,
    ),
    ProjectData(
      title: StringConst.PORTFOLIO_6_TITLE,
      category: StringConst.UI,
      projectCoverUrl: ImagePath.PORTFOLIO_6,
      width: 0.475,
      mobileHeight: 0.3,
    ),
  ];
  static List<ProjectData> webDesign = [
    ProjectData(
      title: StringConst.PORTFOLIO_2_TITLE,
      category: StringConst.WEB_DESIGN,
      projectCoverUrl: ImagePath.PORTFOLIO_2,
      width: 0.225,
    ),
    ProjectData(
      title: StringConst.PORTFOLIO_4_TITLE,
      category: StringConst.WEB_DESIGN,
      projectCoverUrl: ImagePath.PORTFOLIO_4,
      width: 0.2375,
    ),
    // ProjectData(
    //   title: StringConst.PORTFOLIO_5_TITLE,
    //   category: StringConst.ANIMATED,
    //   projectCoverUrl: ImagePath.PORTFOLIO_5,
    //   width: 0.2375,
    // ),
  ];
}
