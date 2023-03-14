import 'package:challenge03_fteam/src/mockup/profiles_data.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ExpandedListWidget extends StatefulWidget {
  final String Group;
  final bool active;
  const ExpandedListWidget(
      {super.key, required this.Group, required this.active});

  @override
  State<ExpandedListWidget> createState() => _ExpandedListWidgetState();
}

class _ExpandedListWidgetState extends State<ExpandedListWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<double> rotationAnimation;
  late final Animation<double> heightFactoAnimation;
  late bool wasPassed = widget.active;
  final profileList = profilesDataList;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );

    rotationAnimation = Tween(
      begin: 0.5,
      end: 0.0,
    ).animate(controller);

    heightFactoAnimation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(controller);
    if (wasPassed) {
      controller.forward();
    } else {
      controller.reverse();
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    final textStyle = Theme.of(context).textTheme;
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () {
                wasPassed = !wasPassed;
                if (wasPassed) {
                  controller.forward();
                } else {
                  controller.reverse();
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      widget.Group,
                      style: textStyle.subtitle2,
                    ),
                  ),
                  RotationTransition(
                    turns: rotationAnimation,
                    child: Icon(
                      Icons.expand_more,
                      size: screenSize * 0.037,
                    ),
                  ),
                ],
              ),
            ),
            ClipRRect(
              child: Align(
                heightFactor: heightFactoAnimation.value,
                alignment: Alignment.topLeft,
                child: SizedBox(
                  height: (screenSize * 0.048) +
                      ((profileList.length - 1) * (screenSize * 0.261)) +
                      (screenSize * 0.186),
                  child: Padding(
                    padding: EdgeInsets.only(top: screenSize * 0.048),
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: profileList.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              '/two',
                              arguments: profileList[index],
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                              bottom: index < profileList.length - 1
                                  ? screenSize * 0.074
                                  : 0,
                            ),
                            child: ChatPreviewWidget(
                              notifications: profileList[index].notifications,
                              avatarImage: profileList[index].avatarImage,
                              name: profileList[index].name,
                              number: profileList[index].number,
                              lastMessageData:
                                  profileList[index].messages.last.hour,
                              lastMessage:
                                  profileList[index].messages.last.message.last,
                              muted: profileList[index].isMuted,
                              online: profileList[index].isOnline,
                              screenSize: screenSize,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
