import 'package:flutter/material.dart';
import '../themes/colors.dart';

class SearchWidget extends StatelessWidget {
  final double screenSize;
  const SearchWidget({super.key, required this.screenSize});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final colors = MyColors();

    return Container(
      height: screenSize * 0.16,
      width: screenSize * 0.906,
      decoration: BoxDecoration(
        color: colors.backOpacity,
        borderRadius: BorderRadius.circular(screenSize * 0.053),
      ),
      child: Row(
        children: [
          SizedBox(
            width: screenSize * 0.053,
          ),
          Icon(
            Icons.search,
            color: Theme.of(context).iconTheme.color,
            size: screenSize * 0.058,
          ),
          SizedBox(
            width: screenSize * 0.037,
          ),
          Text(
            'Search',
            style: textStyle.subtitle2,
          ),
        ],
      ),
    );
  }
}
