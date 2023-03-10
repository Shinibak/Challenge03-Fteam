import 'package:challenge03_fteam/src/mockup/filters_data.dart';
import 'package:challenge03_fteam/src/widgets/expanded_list_widget.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../mockup/menu_buttons_data.dart';
import '../widgets/list_filter_button_widget.dart';
import '../widgets/menu_bar_widget.dart';

class ViewChatPage extends StatelessWidget {
  const ViewChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    final filters = filtersDataList;
    final menu = menuButtonsDataList;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Column(
              children: [
                SizedBox(
                  height: screenSize * 0.122,
                ),
                SearchWidget(screenSize: screenSize),
                SizedBox(
                  height: screenSize * 0.042,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: screenSize * 0.048,
                  ),
                  child: SizedBox(
                    height: screenSize * 0.117,
                    child: ListFilterButtonWidget(filterList: filters),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: filters.length,
                    padding: EdgeInsets.zero,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          left: screenSize * 0.048,
                          right: screenSize * 0.048,
                        ),
                        child: ExpandedListWidget(
                          filtersGroup: filters[index].text,
                          active: filters[index].active,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: MenuBarWidget(
              menuList: menu,
            ),
          ),
        ],
      ),
    );
  }
}
