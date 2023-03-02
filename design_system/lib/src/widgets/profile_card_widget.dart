import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../themes/theme_extensions.dart';

class ProfileCardWidget extends StatelessWidget {
  final String avatarProfile;
  final String nameProfile;
  final String numberCell;
  const ProfileCardWidget({
    super.key,
    required this.avatarProfile,
    required this.nameProfile, required this.numberCell,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    final textStyle = Theme.of(context).textTheme;
    final colors = MyColors();
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
            children: [
              AvatarTodoListWidget(avatarImage: avatarProfile),
            ],
          ),
          SizedBox(height: screenSize * 0.026),
          Text(
            nameProfile,
            style: textStyle.titleMedium,
          ),
          SizedBox(height: screenSize * 0.037),
          Text(
            numberCell,
            style: textStyle.subtitle2,
          ),
          SizedBox(height: screenSize * 0.048),
        ],
      ),
    );
  }
}
