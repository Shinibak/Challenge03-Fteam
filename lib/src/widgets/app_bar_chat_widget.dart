import 'package:challenge03_fteam/src/models/profile_modal.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class AppBarChatWidget extends StatelessWidget {
  final ProfileModal profile;
  const AppBarChatWidget({
    super.key,
    required this.profile,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    final textStyle = Theme.of(context).textTheme;
    final theme = Theme.of(context).extension<ThemeCustom>()!;
    return Container(
      height: screenSize * 0.261,
      width: screenSize,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(screenSize * 0.096),
      ),
      child: Column(
        children: [
          SizedBox(height: screenSize * 0.117),
          Row(
            children: [
              SizedBox(width: screenSize * 0.048),
              AvatarChatWidget(avatarImage: profile.avatarImage),
              SizedBox(width: screenSize * 0.026),
              Text(
                profile.name,
                style: textStyle.bodyText2,
              ),
              SizedBox(width: screenSize * 0.101),
              Container(
                height: screenSize * 0.106,
                decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  borderRadius: BorderRadius.circular(screenSize * 0.032),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/tree', arguments: profile);
                  },
                  child: Column(
                    children: [
                      SizedBox(height: screenSize * 0.032),
                      Row(
                        children: [
                          SizedBox(width: screenSize * 0.042),
                          Text(
                            'Agree to Offer',
                            style: textStyle.bodyText2,
                          ),
                          SizedBox(width: screenSize * 0.042),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: screenSize * 0.037),
              Icon(
                CustomIcon.folderBookmarkIcon,
                color: theme.todoColorOn,
              ),
              SizedBox(width: screenSize * 0.026),
              Icon(
                CustomIcon.calcIcon,
                color: theme.todoColorOn,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
