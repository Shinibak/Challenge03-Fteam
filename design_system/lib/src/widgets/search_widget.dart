import 'package:flutter/material.dart';
import '../themes/theme_extensions.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    final theme = Theme.of(context).extension<ThemeCustom>()!;

    return Container(
      height: screenSize * 0.16,
      width: screenSize * 0.906,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(screenSize * 0.053),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: screenSize * 0.053,
          ),
          Icon(
            Icons.search,
            color: Colors.grey,
            size: screenSize * 0.058,
          ),
          SizedBox(
            width: screenSize * 0.037,
          ),
          Text(
            'Search',
            style: theme.subtitle2,
          ),
        ],
      ),
    );
  }
}
