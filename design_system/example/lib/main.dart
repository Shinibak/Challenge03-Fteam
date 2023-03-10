import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(const HotReloadWidgetbook());
}

class HotReloadWidgetbook extends StatelessWidget {
  const HotReloadWidgetbook({super.key});
  final double screenSize = 375;

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      devices: [
        Apple.iPhone8,
      ],
      themes: [
        WidgetbookTheme(
          name: 'Light',
          data: lightTheme,
        ),
        WidgetbookTheme(
          name: 'Dark',
          data: darkTheme,
        ),
      ],
      appInfo: AppInfo(name: 'Example'),
      categories: [
        WidgetbookCategory(
          name: 'widgets',
          widgets: [
            WidgetbookComponent(
              name: 'notification Box',
              useCases: [
                WidgetbookUseCase(
                  name: 'selected',
                  builder: (context) => NotificationWidget(
                    activeNotification: true,
                    notification: 34,
                    screenSize: screenSize,
                  ),
                ),
                WidgetbookUseCase(
                  name: 'unselected',
                  builder: (context) => NotificationWidget(
                    activeNotification: false,
                    notification: 34,
                    screenSize: screenSize,
                  ),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Filter Button',
              useCases: [
                WidgetbookUseCase(
                  name: 'selected Filter',
                  builder: (context) => FilterButtonWidget(
                    text: 'All',
                    icon: CustomIcon.archiveIcon,
                    notifications: 35,
                    active: false,
                    screenSize: screenSize,
                  ),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'App Bar Button',
              useCases: [
                WidgetbookUseCase(
                  name: 'Button',
                  builder: (context) => MenuButtonWidget(
                    icon: CustomIcon.chatBoxIcon,
                    active: true,
                    screenSize: screenSize,
                  ),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'search Box',
              useCases: [
                WidgetbookUseCase(
                  name: 'search',
                  builder: (context) => SearchWidget(
                    screenSize: screenSize,
                  ),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'chat message',
              useCases: [
                WidgetbookUseCase(
                  name: 'send',
                  builder: (context) => MessageSentWidget(
                    message: 'batata',
                    screenSize: screenSize,
                  ),
                ),
                WidgetbookUseCase(
                  name: 'received',
                  builder: (context) => MessageReceiveWidget(
                    message: 'batata',
                    screenSize: screenSize,
                  ),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Avatar Icon',
              useCases: [
                WidgetbookUseCase(
                  name: 'Avatar notifications',
                  builder: (context) => AvatarNotificationWidget(
                    notifications: 23,
                    active: true,
                    avatarImage: 'assets/avatar/avatar.png',
                    screenSize: screenSize,
                  ),
                ),
                WidgetbookUseCase(
                  name: 'Avatar Todo List',
                  builder: (context) => AvatarTodoListWidget(
                    avatarImage: 'assets/avatar/avatar.png',
                    screenSize: screenSize,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
