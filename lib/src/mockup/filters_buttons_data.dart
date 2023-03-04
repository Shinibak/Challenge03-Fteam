import 'package:design_system/design_system.dart';
import '../models/filter_button_modal.dart';

List<FilterButtonModal> filtersButtonsDataList = [
  const FilterButtonModal(
    text: 'All',
    icon: CustomIcon.chatBoxIcon,
    notifications: 35,
    active: true,
  ),
  const FilterButtonModal(
    text: 'Live Chat',
    icon: CustomIcon.archiveIcon,
    notifications: 2,
    active: false,
  ),
  const FilterButtonModal(
    text: 'Live blocked',
    icon: CustomIcon.bookmarkIcon,
    notifications: 33,
    active: false,
  ),
];
