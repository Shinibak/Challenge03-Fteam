import 'package:challenge03_fteam/src/models/chat_modal.dart';
import '../models/profile_modal.dart';

List<ProfileModal> profilesDataList = [
  ProfileModal(
    avatarImage: 'assets/avatar/jonh_tornton.jpg',
    muted: false,
    name: 'Jonh Tornton',
    number: '(15) 99872-4545',
    messages: [
      ChatModal(message: ['eae'], hour: '14:34', sending: true),
      ChatModal(message: ['eae', 'de boa ?'], hour: '14:34', sending: false),
      ChatModal(message: ['no'], hour: '14:34', sending: true),
    ],
    online: true,
    status: 'batata',
    notifications: 33,
  ),
];
