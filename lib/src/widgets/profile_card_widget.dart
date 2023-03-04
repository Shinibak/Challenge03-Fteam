
import 'package:challenge03_fteam/src/mockup/profile_buttons_data.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../models/profile_modal.dart';

class ProfileCardWidget extends StatelessWidget {
  final ProfileModal profile;
  const ProfileCardWidget({
    super.key, required this.profile,

  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    final textStyle = Theme.of(context).textTheme;
    final colors = MyColors();
    final listButtonsProfile = profileButtonsData;
    return Container(
      height: screenSize * 1.157,
      width: screenSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(screenSize * 0.096),
        color: colors.profileCardTheme,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: screenSize * 0.133),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: screenSize * 0.037,
              ),
              Padding(
                padding: EdgeInsets.only(top: screenSize * 0.016),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: screenSize * 0.042,
                  color: Theme.of(context).iconTheme.color,
                ),
              ),
              SizedBox(width: screenSize * 0.309),
              Padding(
                padding: EdgeInsets.only(top: screenSize * 0.0053),
                child: AvatarTodoListWidget(avatarImage: profile.avatarImage),
              ),
              SizedBox(width: screenSize * 0.224),
              Icon(
                Icons.more_horiz,
                size: screenSize * 0.08,
                color: Theme.of(context).iconTheme.color,
              ),
            ],
          ),
          SizedBox(height: screenSize * 0.026),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                profile.name,
                style: textStyle.bodyText1,
              ),
              SizedBox(width: screenSize * 0.0106),
              OnlineStatusWidget(isOnline: profile.online),
            ],
          ),
          SizedBox(height: screenSize * 0.037),
          Text(
            profile.number,
            style: textStyle.subtitle2,
          ),
          SizedBox(height: screenSize * 0.048),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListView.builder(
                itemCount: listButtonsProfile.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      ProfileButtonsWidget(
                        icon: listButtonsProfile[index].icon,
                        active: listButtonsProfile[index].active,
                      ),
                      if (index < listButtonsProfile.length - 1)
                        SizedBox(width: screenSize * 0.048),
                    ],
                  );
                },
              ),
            ],
          ),
          SizedBox(height: screenSize * 0.037),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(height: screenSize * 0.010),
                  Text(
                    profile.status,
                    style: textStyle.caption,
                  ),
                ],
              ),
              SizedBox(width: screenSize * 0.016),
              Icon(
                CustomIcon.handWaveIcon,
                size: screenSize * 0.048,
                color: Colors.amber,
              ),
            ],
          ),
          SizedBox(width: screenSize * 0.026),
          Text(
            'Our company are looking for:',
            style: textStyle.subtitle2,
          ),
          SizedBox(width: screenSize * 0.037),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProfileSkillsWidget(
                backgroundColor: colors.uiUxColor,
                title: 'UI/UX Designer',
              ),
              SizedBox(width: screenSize * 0.026),
              ProfileSkillsWidget(
                backgroundColor: colors.projectManagerColor,
                title: 'Project Manager',
              ),
            ],
          ),
          SizedBox(height: screenSize * 0.0213),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProfileSkillsWidget(
                backgroundColor: colors.qaColor,
                title: 'QA',
              ),
              SizedBox(width: screenSize * 0.026),
              ProfileSkillsWidget(
                backgroundColor: colors.seoColor,
                title: 'SEO',
              ),
              SizedBox(width: screenSize * 0.026),
              ProfileSkillsWidget(
                backgroundColor: colors.javaColor,
                title: 'Java Script Developer',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
