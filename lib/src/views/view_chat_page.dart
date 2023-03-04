import 'package:challenge03_fteam/src/mockup/filters_buttons_data.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ViewChatPage extends StatelessWidget {
  const ViewChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    final filters = filtersButtonsDataList;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: screenSize * 0.122,
          ),
          const SearchWidget(),
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
          SizedBox(
            height: screenSize * 0.058,
          ),
          //
          SizedBox(
            height: screenSize * 0.048,
          ),
        ],
      ),
    );
  }
}
