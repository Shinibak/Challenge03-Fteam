import 'package:challenge03_fteam/src/models/chat_model.dart';
import '../models/profile_model.dart';

List<ProfileModel> profilesDataList = [
  ProfileModel(
    avatarImage: 'assets/avatar/jonh_tornton.jpg',
    isMuted: false,
    name: 'Jonh Tornton',
    number: '(15) 99872-4545',
    messages: [
      ChatModel(
        message: ['eae'],
        hour: '14:34',
        sending: true,
        profilePicture: 'my',
      ),
      ChatModel(
        message: ['eae', 'de boa ?'],
        hour: '14:34',
        sending: false,
        profilePicture: 'assets/avatar/jonh_tornton.jpg',
      ),
      ChatModel(
        message: ['no'],
        hour: '14:34',
        sending: true,
        profilePicture: 'my',
      ),
    ],
    isOnline: true,
    status: 'batata',
    notifications: 33,
  ),
  ProfileModel(
    avatarImage: 'assets/avatar/jonh_tornton.jpg',
    isMuted: false,
    name: 'Jonh Tornton',
    number: '(15) 99872-4545',
    messages: [
      ChatModel(
        message: ['eae'],
        hour: '14:34',
        sending: true,
        profilePicture: 'my',
      ),
      ChatModel(
        message: ['eae', 'de boa ?'],
        hour: '14:34',
        sending: false,
        profilePicture: 'assets/avatar/jonh_tornton.jpg',
      ),
      ChatModel(
        message: ['no'],
        hour: '14:34',
        sending: true,
        profilePicture: 'my',
      ),
    ],
    isOnline: true,
    status: 'batata',
    notifications: 33,
  ),
];
