import 'package:challenge03_fteam/src/mockup/profiles_data.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ExpandedListWidget extends StatefulWidget {
  final String filtersGroup;
  final bool active;
  const ExpandedListWidget(
      {super.key, required this.filtersGroup, required this.active});

  @override
  State<ExpandedListWidget> createState() => _ExpandedListWidgetState();
}

class _ExpandedListWidgetState extends State<ExpandedListWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<double> rotationAnimation;
  late final Animation<double> heightFactoAnimation;

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

    controller.addListener(() {
      setState(() {});
    });
  }

  late bool wasPassed = widget.active;
  final profileList = profilesDataList;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    return Column(
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
          child: Padding(
            padding: EdgeInsets.only(
              top: screenSize * 0.058,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.filtersGroup),
                RotationTransition(
                  turns: rotationAnimation,
                  child: const Icon(Icons.expand_more),
                ),
              ],
            ),
          ),
        ),
        ClipRRect(
          child: Align(
            heightFactor: heightFactoAnimation.value,
            alignment: Alignment.topLeft,
            child: SizedBox(
              height: profileList.length * (screenSize * 0.186),
              child: ListView.builder(
                itemCount: profileList.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/two',
                        arguments: profileList[index],
                      );
                    },
                    child: ChatPreviewWidget(
                      notifications: profileList[index].notifications,
                      avatarImage: profileList[index].avatarImage,
                      name: profileList[index].name,
                      number: profileList[index].number,
                      lastMessageData: profileList[index].messages.last.hour,
                      lastMessage:
                          profileList[index].messages.last.message.last,
                      muted: profileList[index].muted,
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
