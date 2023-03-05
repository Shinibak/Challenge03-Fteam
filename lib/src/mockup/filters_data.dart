import 'package:design_system/design_system.dart';
import '../models/filter_modal.dart';

List<FilterModal> filtersDataList = [
  const FilterModal(
    text: 'All',
    icon: CustomIcon.chatBoxIcon,
    notifications: 35,
    active: true,
  ),
  const FilterModal(
    text: 'Live Chat',
    icon: CustomIcon.archiveIcon,
    notifications: 2,
    active: false,
  ),
  const FilterModal(
    text: 'Live blocked',
    icon: CustomIcon.bookmarkIcon,
    notifications: 33,
    active: false,
  ),
];
